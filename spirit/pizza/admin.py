from django.contrib import admin
from .models import Pizza, PizzaOrder, Order

admin.site.register(Pizza)
admin.site.register(PizzaOrder)
admin.site.register(Order)
