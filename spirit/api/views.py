from pizza.models import (
    Pizza,
    PizzaOrder,
    Order,
)
from rest_framework import viewsets
from api.serializers import (
    PizzaSerializer,
    PizzaOrderSerializer,
    OrderSerializer,
    )



class PizzaViewSet(viewsets.ModelViewSet):
    """API endpoint that allows Pizza to be views or edit."""

    queryset = Pizza.objects.all().order_by()
    # queryset = Pizza.objects.all().order_by('-id')
    serializer_class = PizzaSerializer


class PizzaOrderViewSet(viewsets.ModelViewSet):
    """API endpoint that allows PizzaOrder to be views or edit."""

    queryset = PizzaOrder.objects.all().order_by()
    # queryset = PizzaOrder.objects.all().order_by('-id')
    serializer_class = PizzaOrderSerializer


class OrderViewSet(viewsets.ModelViewSet):
    """API endpoint that allows Order to be views or edit."""

    queryset = Order.objects.all().order_by()
    # queryset = Order.objects.all().order_by('-id')
    serializer_class = OrderSerializer
