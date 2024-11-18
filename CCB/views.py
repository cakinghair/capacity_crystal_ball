from django.shortcuts import render
from .models import Order, Aout
from datetime import date, timedelta
from django.http import JsonResponse, HttpResponseRedirect
import math
import gurobipy
from gurobipy import GRB
import json
from django.contrib import auth
from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.views.decorators.csrf import csrf_exempt

# Create your views here.

class product:
    def __init__(self, name, test_yield, wip, upw, color):
        self.name = name
        self.test_yield = test_yield
        self.wip = wip
        self.upw = upw
        self.aoutgoma = {'supply_need':[], 'supply_projection':[], 'supply_need_cum':[], 'supply_projection_cum':[], 'gap':[]}
        self.capacity_plan = {'tester':[], 'output':[], 'output_cum':[]}
        self.color = color
product_parameters = {
    'Ahava': product('Ahava', 0.8, 380000, 30000, 'yellowgreen'),
    'Nina': product('Nina', 0.9, 1480000, 25000, 'saddlebrown'),
    'Clay': product('Clay', 0.95, 0, 40000, 'darkblue'),
    'Elly': product('Elly', 0.92, 272000, 33000, 'darkorange'),
    'Henry': product('Henry', 0.85, 147600, 20000, 'magenta'),
    'Kolin': product('Kolin', 0.88, 130000, 40000, 'gold')
}

def GetPreviousKey(d, key):
    keys = list(d.keys())
    if key in keys:
        index = keys.index(key)
        if index > 0:
            return keys[index - 1]
    return None

def GetNextKey(d, key):
    keys = list(d.keys())
    if key in keys:
        index = keys.index(key)
        if index < len(keys) - 1:
            return keys[index + 1]
    return None

# Create a reference list recording the start and end of each workweek
order_db = Order.objects.all()
for order in order_db:
    order.due_date = date.today() + (order.due_date - date(2024,7,28))
year_list = set(order.due_date.year for order in order_db)
w01_start = {}
for year in year_list:
    for day in range(1,8):
        if date(year,1,day).weekday() == 4:
            w01_start[year]= date(year,1,day)
            break
workweek_reference = {}
ww_start = next(iter(w01_start.items()))[1]
ww_end = ww_start + timedelta(days=6)
for y in year_list:
    for week in range(60):
        if(ww_start.year > y):
            break
        else:
            workweek_reference[y*100+(week+1)] = [ww_start, ww_end]
            ww_start += timedelta(days=7)
            ww_end += timedelta(days=7)
#

def DateToWorkweek(date, reference):
    for key in reference.keys():
        if reference[key][0] <= date <= reference[key][1]:
            workweek = key
            break
    return workweek

current_workweek = DateToWorkweek(date.today(), workweek_reference)

# Cook order database
workweek_list = list(sorted(set([item for item in workweek_reference.keys() if item > current_workweek])))[0:20]
order_db_list = list()
for order in order_db:
    order.product_name = order.product_name.strip()
    order.test_out = order.due_date - timedelta(days=3)
    order.loading_workweek = GetPreviousKey(workweek_reference,DateToWorkweek(order.test_out,workweek_reference))
    if order.loading_workweek <= current_workweek:
        order.loading_workweek = GetNextKey(workweek_reference, current_workweek)
    order.test_yield = product_parameters[order.product_name].test_yield
    order.upw = product_parameters[order.product_name].upw
    order.supply_need = order.quantity / order.test_yield
    if order.loading_workweek in workweek_list:
        order_db_list.append(order)
order_db = order_db_list

product_list = list(sorted(set([order.product_name for order in order_db])))
#

def CookAoutDB():
    aout_db = Aout.objects.all()
    for item in aout_db:
        if item.scenario.strip() == 'Standard':
            keys = list(workweek_reference.keys())
            origin_index = keys.index(202427)
            item_index = keys.index(item.workweek)
            current_index = keys.index(current_workweek)
            item.workweek = keys[current_index + (item_index - origin_index)]

            if item.workweek == GetNextKey(workweek_reference, current_workweek):
                item.quantity += product_parameters[item.product_name.strip()].wip
    return aout_db
aout_db = CookAoutDB()

def loading_page(request):
    return render(request, 'loading.html')

def basic_info(request):
    data = {
        "workweek": workweek_list,
        "product": product_list
    }
    return JsonResponse(data)

def scenario_info(request):
    aout_db = CookAoutDB()
    scenario_list = list(set([item.scenario.strip() for item in aout_db]))
    scenario_pattern = [{
        'scenario': item.scenario.strip(),
        'workweek': item.workweek,
        'product': item.product_name.strip(),
        'quantity': item.quantity
        } for item in aout_db if item.workweek in workweek_list]
    for scenario in scenario_list:
        for product in product_list:
            for week in workweek_list:
                exists = any(item['scenario'] == scenario and
                    item['workweek'] == week and
                    item['product'] == product
                    for item in scenario_pattern)
                if not exists:
                    scenario_pattern.append({
                        'scenario': scenario,
                        'workweek': week,
                        'product': product,
                        'quantity': 0})
    scenario_pattern.sort(key=lambda x: (x['product'], x['workweek']))
    data = {
        'list': scenario_list,
        'pattern': scenario_pattern,
    }
    return JsonResponse(data)

@csrf_exempt
def loading_bar_chart(request):
    input = json.loads(request.body)
    workweek_list_filtered = [item for item in workweek_list if current_workweek < item <= int(input.get('end_week'))]
    data = {
        "workweek": workweek_list_filtered,
        "product": [
            {
                "name": item,
                "totals": [(sum(order.quantity for order in order_db
                                if order.product_name == item and order.loading_workweek == week)) for week in workweek_list_filtered],
                "backgroundcolor": product_parameters[item].color
            }
            for item in product_list
        ]
    }
    return JsonResponse(data)

def AOUTGoMa(scenario):
    aout_db = CookAoutDB()
    for design in product_parameters.values():
        design.aoutgoma['supply_need'] = [math.ceil(sum(order.supply_need for order in order_db
                                                if order.product_name == design.name
                                                and order.loading_workweek == week)) for week in workweek_list]
        design.aoutgoma['supply_projection'] = [math.ceil(sum(item.quantity for item in aout_db
                                                    if item.product_name.strip() == design.name
                                                    and item.workweek == week
                                                    and item.scenario.strip() == scenario)) for week in workweek_list]
        design.aoutgoma['supply_need_cum'] = [math.ceil(sum(order.supply_need for order in order_db
                                                if order.product_name == design.name
                                                and order.loading_workweek <= week)) for week in workweek_list]
        design.aoutgoma['supply_projection_cum'] = [math.ceil(sum(item.quantity for item in aout_db
                                                    if item.product_name.strip() == design.name
                                                    and item.workweek <= week
                                                    and item.workweek > current_workweek
                                                    and item.scenario.strip() == scenario)) for week in workweek_list]
        design.aoutgoma['gap'] = [design.aoutgoma['supply_projection_cum'][i] - design.aoutgoma['supply_need_cum'][i]
                                for i in range(len(workweek_list))]

    for order in order_db:
        order.remarks = ''
    for design in product_list:
        cum_need = 0
        for i in range(len(workweek_list)):
            shortage = 0
            order_list_filtered = [order for order in order_db
                                    if order.product_name == design and order.loading_workweek == workweek_list[i]]
            for order in order_list_filtered:
                if shortage > 0:
                    order.remarks = 'Material constraint'
                elif cum_need + order.supply_need > product_parameters[design].aoutgoma['supply_projection_cum'][i]:
                    shortage = cum_need + order.supply_need - product_parameters[design].aoutgoma['supply_projection_cum'][i]
                    order.remarks = 'Material constraint'
                else:
                    cum_need += order.supply_need

def supply_page(request):
    return render(request, 'supply.html')

def product_select(request):
    data = {
        "product": product_list
    }
    return JsonResponse(data)

def supply_cum_chart(request):
    input = json.loads(request.body)
    workweek_list_filtered = [item for item in workweek_list if current_workweek < item <= int(input.get('end_week'))]
    scenario = input.get('scenario')
    design = input.get('product')
    AOUTGoMa(scenario)
    data = {
        "workweek": workweek_list_filtered,
        "product": [
            {
                "name": product_parameters[design].name,
                "cum_loading": product_parameters[design].aoutgoma['supply_need_cum'],
                "cum_supply": product_parameters[design].aoutgoma['supply_projection_cum'],
                "gap": product_parameters[design].aoutgoma['gap'],
                "backgroundcolor": product_parameters[design].color
            },
        ]
    }
    return JsonResponse(data)

def aout_gap_table(request):
    input = json.loads(request.body)
    workweek_list_filtered = [item for item in workweek_list if current_workweek < item <= int(input.get('end_week'))]
    scenario = input.get('scenario')
    design = input.get('product')
    AOUTGoMa(scenario)
    data = {
        'workweek': workweek_list_filtered,
        'supply_need': product_parameters[design].aoutgoma['supply_need'],
        'supply_projection': product_parameters[design].aoutgoma['supply_projection'],
        'cum_supply_need': product_parameters[design].aoutgoma['supply_need_cum'],
        'cum_supply_projection': product_parameters[design].aoutgoma['supply_projection_cum'],
        'gap': product_parameters[design].aoutgoma['gap']
    }
    return JsonResponse(data)

def CapacityAnalysis(product_list, workweek_list, tester_count, scenario):
    AOUTGoMa(scenario)

    # Capacity Go Ma
    for i in range(len(workweek_list)):
        cum_tester_need = 0
        cum_tester_available = tester_count * (i + 1)
        for priority in range(len(product_list)):
            order_list_filtered = [order for order in order_db
                                    if order.loading_workweek <= workweek_list[i] and order.priority == priority + 1]

            for order in order_list_filtered:
                if order.remarks == '':
                    cum_tester_need += order.quantity / order.upw
                    if cum_tester_need > cum_tester_available:
                        order.remarks = 'Capacity constraint'
            cum_tester_need = math.ceil(cum_tester_need)
    #

    # Tester allocation optimization model to minimize the conversions
    model = gurobipy.Model("tester")
    model.setParam('OutputFlag', 0)

    x = model.addVars(product_list, workweek_list, vtype=GRB.CONTINUOUS) # Decision variables

    weekly_allocation_explode = model.addConstrs(sum(x[name,week] for name in product_list) <= tester_count # Constarints 1
                                                for week in workweek_list)

    weekly_output = {(i,j): x[i,j]*product_parameters[i].upw for i in product_list for j in workweek_list} # Constarints 2
    cum_weekly_output = {}
    cum_weekly_output_before_yield = {}
    for name in product_list:
        for week in workweek_list:
            if week > current_workweek + 1:
                cum_weekly_output[name,week] = sum([weekly_output[name,i] for i in workweek_list if i <= week])
                cum_weekly_output_before_yield[name,week] = cum_weekly_output[name,week] / product_parameters[name].test_yield
            else:
                cum_weekly_output[name,week] = weekly_output[name,week]
                cum_weekly_output_before_yield[name,week] = cum_weekly_output[name,week] / product_parameters[name].test_yield

    fulfill_order = model.addConstrs(cum_weekly_output[name,week] >= sum(order.quantity for order in order_db
                                                                        if order.product_name == name
                                                                        and order.loading_workweek <= week and order.remarks == '')
                                    for name in product_list for week in workweek_list)

    consider_aout = model.addConstrs(cum_weekly_output_before_yield[name,workweek_list[i]] # Constarints 3
                                    <= product_parameters[name].aoutgoma['supply_projection_cum'][i]
                                    for name in product_list for i in range(len(workweek_list)))

    conversions = model.addVars(product_list, workweek_list, vtype=GRB.INTEGER) # Objective
    for name in product_list:
        for week in workweek_list[1:]:
            model.addConstr(conversions[name,week] >= x[name,week] - x[name,GetPreviousKey(workweek_reference,week)])
            model.addConstr(conversions[name,week] >= x[name,GetPreviousKey(workweek_reference,week)] - x[name,week])
    model.setObjective(sum(conversions[name,week] for week in workweek_list for name in product_list),GRB.MINIMIZE)
    model.optimize()

    for design in product_parameters.values():
        design.capacity_plan['tester'] = [math.floor(x[design.name, week].X*10)/10 for week in workweek_list]
        design.capacity_plan['output'] = [math.ceil(design.upw * x[design.name, week].X) for week in workweek_list]
        design.capacity_plan['output_cum'] = [1 for i in range(len(workweek_list))]
        design.capacity_plan['output_cum'][0] = design.capacity_plan['output'][0]
        for i in range(1,len(workweek_list)):
            design.capacity_plan['output_cum'][i] = design.capacity_plan['output'][i] + design.capacity_plan['output_cum'][i-1]
    #

    # Estimate in which workweek each order will be completed
    for design in product_list:
        cum_demand = 0
        for i in range(len(workweek_list)):
            order_list_filtered = [order for order in order_db if order.product_name == design
                                and order.remarks == '']
            for order in order_list_filtered:
                if cum_demand + order.quantity <= product_parameters[design].capacity_plan['output_cum'][i]:
                    cum_demand += order.quantity
                    order.remarks = str(workweek_list[i])
                else:
                    break
    #

def capacity_page(request):
    return render(request, 'capacity.html')

@csrf_exempt
def allocation_table(request):
    input = json.loads(request.body)
    workweek_list_filtered = [item for item in workweek_list if current_workweek < item <= int(input.get('end_week'))]
    tester_count = int(input.get('tester'))
    scenario = input.get('scenario')
    CapacityAnalysis(product_list, workweek_list_filtered, tester_count, scenario)

    overall_data = [
            {
                "name": design,
                "tester": product_parameters[design].capacity_plan['tester'],
                "output": product_parameters[design].capacity_plan['output'],
                "backgroundcolor": product_parameters[design].color
            }
            for design in product_list
    ]
    overall_data += [
        {
            "name": 'Overall',
            "tester": [math.floor(sum(product_parameters[design].capacity_plan['tester'][i] for design in product_list)*10)/10
                        for i in range(len(workweek_list_filtered))],
            "output": [sum(product_parameters[design].capacity_plan['output'][i] for design in product_list)
                        for i in range(len(workweek_list_filtered))],
            "backgroundcolor": 'gray'
        }]
    data = {
        'workweek': workweek_list_filtered,
        "product": overall_data}
    return JsonResponse(data)

def order_page(request):
    return render(request, 'order.html')

def order_table(request):
    input = json.loads(request.body)
    workweek_list_filtered = [item for item in workweek_list if current_workweek < item <= int(input.get('end_week'))]
    tester_count = int(input.get('tester'))
    scenario = input.get('scenario')
    CapacityAnalysis(product_list, workweek_list_filtered, tester_count, scenario)

    data = [
        {
            'id': order.order_id,
            'product': order.product_name,
            'quantity': order.quantity,
            'due_date': order.due_date,
            'due_workweek': order.loading_workweek,
            'plan_to_complete': order.remarks,
            'test_yield': product_parameters[order.product_name].test_yield,
            'supply_need': math.ceil(order.quantity / product_parameters[order.product_name].test_yield),
            'upw': product_parameters[order.product_name].upw,
            'tester_need': order.quantity / product_parameters[order.product_name].upw,
            'wip_quantity': product_parameters[order.product_name].wip
        } for order in order_db if order.loading_workweek in workweek_list_filtered
    ]
    return JsonResponse(data, safe=False)

def login_page(request):
    if request.method == 'POST':
        username = request.POST.get('username', '')
        password = request.POST.get('password', '')
        user = auth.authenticate(username=username, password=password)
        if user is not None and user.is_active:
            auth.login(request, user)
            return HttpResponseRedirect(request.GET.get('next', ''))
        else:
            return render(request, 'login.html', {'error_message': 'Invalid username or password.', 'username': username})
    else:
        return render(request, 'login.html', {})

def logout(request):
    auth.logout(request)
    return HttpResponseRedirect(request.GET.get('next', ''))

class RegisterForm(UserCreationForm):
    username = forms.CharField(
        label="username",
        widget=forms.TextInput(attrs={
            'class': 'form-control'
    }))
    password1 = forms.CharField(
        label="password",
        widget=forms.PasswordInput(attrs={
            'class': 'form-control'
    }))
    password2 = forms.CharField(
        label="password confirmation",
        widget=forms.PasswordInput(attrs={
            'class': 'form-control'
    }))
    email = forms.CharField(
        label="email",
        widget=forms.EmailInput(attrs={
            'class': 'form-control'
    }))
    class Meta:
        model = User
        fields = ('username', 'password1', 'password2', 'email')
    def clean_password2(self):
        password1 = self.cleaned_data.get("password1")
        password2 = self.cleaned_data.get("password2")
        if password1 and password1 != password2:
            self.add_error('password2', "Passwords do not match.")
        return password2
    def clean_email(self):
        email = self.cleaned_data.get('email')
        if User.objects.filter(email=email).exists():
            self.add_error('email', "A user with that email already exists.")
        return email

def register_page(request):
    if request.method == 'POST':
        form = RegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = request.POST.get('username', '')
            password1 = request.POST.get('password1', '')
            user = auth.authenticate(username=username, password=password1)
            auth.login(request, user)
            return render(request, 'register.html', {'form': form, 'form.is_valid': True})
    else:
        form = RegisterForm()
    return render(request, 'register.html', {'form': form})

@login_required
def CreateScenario(request):
    aout_db = CookAoutDB()
    form_data = json.loads(request.body)
    for row in range(len(form_data)):
        if form_data[row].get('scenario').strip() == '':
            return JsonResponse({'message': 'Empty scenario name'}, safe=False)
        elif form_data[row].get('scenario').strip() in list(set([item.scenario.strip() for item in aout_db])):
            return JsonResponse({'message': 'A scenario with the given name already exists.'}, safe=False)
        elif form_data[row].get('quantity').strip().isdigit():
            if int(form_data[row].get('quantity').strip()) < 0:
                return JsonResponse({'message': 'Please confirm if all quantity inputs are valid numbers.'}, safe=False)
        else:
            return JsonResponse({'message': 'Please confirm if all quantity inputs are valid numbers.'}, safe=False)
    for row in range(len(form_data)):
        try:
            Aout.objects.create(
                workweek = int(form_data[row].get('workweek')),
                product_name = form_data[row].get('product'),
                quantity = int(form_data[row].get('quantity').strip()),
                scenario = form_data[row].get('scenario').strip(),
                creator = form_data[row].get('creator').strip(),
            )
        except:
            return JsonResponse({'message': 'Unexpected errors. Please try again later.'}, safe=False)
    return JsonResponse({'message': 'Successfully saved the new scneario and its pattern into the database.'}, safe=False)

def scenario(request):
    if request.method == 'GET':
        return scenario_info(request)
    if request.method == 'POST':
        return CreateScenario(request)
    if request.method == 'DELETE':
        return DeleteScenario(request)
    if request.method == 'PATCH':
        return EditScenario(request)

@login_required
def DeleteScenario(request):
    aout_db = CookAoutDB()
    delete_request = json.loads(request.body)
    for item in aout_db:
        if item.scenario.strip() == delete_request['scenario']:
            if item.creator.strip() != delete_request['user']:
                return JsonResponse({'message': 'You can only edit or delete scenarios that you created.'}, safe=False)
    obj = Aout.objects.filter(scenario=delete_request['scenario'])
    obj.delete()
    return JsonResponse({'message': 'Successfully deleted the scenario.'}, safe=False)

@login_required
def EditScenario(request):
    aout_db = CookAoutDB()
    target = json.loads(request.body)['target']
    requestor = json.loads(request.body)['requestor']
    form_data = json.loads(request.body)['data']
    scenario_list = list(set([item.scenario.strip() for item in aout_db]))
    scenario_list.remove(target)
    for row in range(len(form_data)):
        if form_data[row].get('scenario').strip() == '':
            return JsonResponse({'message': 'Empty scenario name'}, safe=False)
        elif form_data[row].get('scenario').strip() in scenario_list:
            return JsonResponse({'message': 'A scenario with the given name already exists.'}, safe=False)
        elif form_data[row].get('quantity').strip().isdigit():
            if int(form_data[row].get('quantity').strip()) < 0:
                return JsonResponse({'message': 'Please confirm if all quantity inputs are valid numbers.'}, safe=False)
        else:
            return JsonResponse({'message': 'Please confirm if all quantity inputs are valid numbers.'}, safe=False)
    for row in range(len(form_data)):
        try:
            obj = Aout.objects.get(scenario = target,
                             workweek = int(form_data[row].get('workweek')),
                             product_name = form_data[row].get('product')
                             )
            if obj.creator != requestor:
                return JsonResponse({'message': 'You can only edit or delete scenarios that you created.'}, safe=False)
            else:
                obj.quantity = int(form_data[row].get('quantity').strip())
                obj.scenario = form_data[row].get('scenario').strip()
                obj.save()
        except:
            return JsonResponse({'message': 'Unexpected errors. Please try again later.'}, safe=False)
    return JsonResponse({'message': 'Successfully saved pattern changes into the database.'}, safe=False)