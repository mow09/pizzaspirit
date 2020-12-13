from django.contrib.auth.models import User
from pizza.models import (
    Pizza,
    PizzaOrder,
    Order,
    )
from rest_framework import viewsets
from rest_framework.generics import ListAPIView
from rest_framework.response import Response
from api.serializers import (
    PizzaSerializer,
    PizzaOrderSerializer,
    OrderSerializer,
    UserSerializer,
    )


class UserViewSet(viewsets.ReadOnlyModelViewSet):
    """API endpoint that allows User to be viewed."""

    queryset = User.objects.all()
    serializer_class = UserSerializer


class PizzaViewSet(viewsets.ModelViewSet):
    """API endpoint that allows Pizza to be viewed."""

    queryset = Pizza.objects.all()
    serializer_class = PizzaSerializer


class PizzaOrderViewSet(viewsets.ModelViewSet):
    """API endpoint that allows PizzaOrder to be viewed."""

    queryset = PizzaOrder.objects.all()
    serializer_class = PizzaOrderSerializer


class OrderViewSet(viewsets.ModelViewSet):
    """API endpoint that allows Order to be viewed."""

    queryset = Order.objects.all()
    serializer_class = OrderSerializer
    filterset_fields = ['customer__username', 'order_state']
