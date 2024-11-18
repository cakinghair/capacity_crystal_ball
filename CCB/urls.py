from django.urls import path
from CCB import views

urlpatterns = [
    path('loading/', views.loading_page, name='loading_page'),
    path('loading/api/workweek/', views.basic_info, name='workweek'),
    path('loading/api/scenario/', views.scenario, name='scenario'),
    path('loading/api/weekly_loading/', views.loading_bar_chart, name='weekly_loading'),

    path('supply/', views.supply_page, name='supply_page'),
    path('supply/api/workweek/', views.basic_info, name='workweek'),
    path('supply/api/scenario/', views.scenario, name='scenario'),
    path('supply/api/product/', views.product_select, name='product'),
    path('supply/api/supply_cum/', views.supply_cum_chart, name='supply_cum'),
    path('supply/api/aout_gap_table/', views.aout_gap_table, name='aout_gap_table'),

    path('capacity/', views.capacity_page, name='capacity_page'),
    path('capacity/api/workweek/', views.basic_info, name='workweek'),
    path('capacity/api/scenario/', views.scenario, name='scenario'),
    path('capacity/api/allocation_table/', views.allocation_table, name='allocation_table'),

    path('order/', views.order_page, name='order_page'),
    path('order/api/workweek/', views.basic_info, name='workweek'),
    path('order/api/scenario/', views.scenario, name='scenario'),
    path('order/api/order_table/', views.order_table, name='order_table'),

    path('login/', views.login_page, name='login_page'),
    path('logout/', views.logout, name='logout'),
    path('register/', views.register_page, name='register_page')
]