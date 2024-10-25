from django.contrib import admin
from django.urls import path
from CCB import views

urlpatterns = [
    path('loading/', views.loading_page, name='loading_page'),
    path('loading/api/workweek_select/', views.basic_info, name='workweek_select'),
    path('loading/api/scenario_select/', views.scenario_info, name='scenario_select'),
    path('loading/api/weekly_loading/', views.loading_bar_chart, name='weekly_loading'),
    path('loading/api/save_new_scenario/', views.new_scenario, name='save_new_scenario'),
    path('loading/api/delete_scenario/', views.delete_scenario, name='delete_scenario'),
    path('loading/api/save_changes/', views.save_changes, name='save_changes'),
    path('supply/', views.supply_page, name='supply_page'),
    path('supply/api/workweek_select/', views.basic_info, name='workweek_select'),
    path('supply/api/scenario_select/', views.scenario_info, name='scenario_select'),
    path('supply/api/product_select/', views.product_select, name='product_select'),
    path('supply/api/supply_cum/', views.supply_cum_chart, name='supply_cum'),
    path('supply/api/aout_gap_table/', views.aout_gap_table, name='aout_gap_table'),
    path('supply/api/save_new_scenario/', views.new_scenario, name='save_new_scenario'),
    path('supply/api/delete_scenario/', views.delete_scenario, name='delete_scenario'),
    path('supply/api/save_changes/', views.save_changes, name='save_changes'),
    path('capacity/', views.capacity_page, name='capacity_page'),
    path('capacity/api/workweek_select/', views.basic_info, name='workweek_select'),
    path('capacity/api/scenario_select/', views.scenario_info, name='scenario_select'),
    path('capacity/api/allocation_table/', views.allocation_table, name='allocation_table'),
    path('capacity/api/save_new_scenario/', views.new_scenario, name='save_new_scenario'),
    path('capacity/api/delete_scenario/', views.delete_scenario, name='delete_scenario'),
    path('capacity/api/save_changes/', views.save_changes, name='save_changes'),
    path('order/', views.order_page, name='order_page'),
    path('order/api/workweek_select/', views.basic_info, name='workweek_select'),
    path('order/api/scenario_select/', views.scenario_info, name='scenario_select'),
    path('order/api/order_table/', views.order_table, name='order_table'),
    path('order/api/save_new_scenario/', views.new_scenario, name='save_new_scenario'),
    path('order/api/delete_scenario/', views.delete_scenario, name='delete_scenario'),
    path('order/api/save_changes/', views.save_changes, name='save_changes'),
    path('login/', views.login_page, name='login_page'),
    path('logout/', views.logout, name='logout'),
    path('register/', views.register_page, name='register_page')
]
