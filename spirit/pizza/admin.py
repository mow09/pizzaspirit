from django.contrib import admin

from .models import Pizza, PizzaOrder, Order, OrderState, Customer
# Register your models here.
admin.site.register(Pizza)
admin.site.register(PizzaOrder)
admin.site.register(Order)
admin.site.register(OrderState)
admin.site.register(Customer)
