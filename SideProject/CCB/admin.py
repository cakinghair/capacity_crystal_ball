from typing import Any
from django.contrib import admin
from .models import Order, Aout
from django.utils.translation import gettext_lazy as _
            
class OrderAdmin(admin.ModelAdmin):
    list_display = ('order_id', 'design_id', 'speed', 'temperature_spec', 'product_name', 'quantity', 'due_date')
    list_filter = ('design_id', 'speed', 'temperature_spec', 'product_name')
    search_fields = ('design_id',)

class AoutAdmin(admin.ModelAdmin):
    list_display = ('workweek', 'product_name', 'quantity')
    list_filter = ('product_name',)

# Register your models here.
admin.site.register(Order, OrderAdmin)
admin.site.register(Aout, AoutAdmin)