from pizza.models import (
    Pizza,
    PizzaOrder,
    Order,
    # Customer,
)
from rest_framework import viewsets
from rest_framework.response import Response
from api.serializers import (
    PizzaSerializer,
    PizzaOrderSerializer,
    OrderSerializer,
    # CustomerSerializer,
    )



# class PizzaViewSet(viewsets.ViewSet):
class PizzaViewSet(viewsets.ModelViewSet):
    """API endpoint that allows Pizza to be views or edit."""

    queryset = Pizza.objects.all().order_by()
    serializer_class = PizzaSerializer
    # def list(self, request):
    #     queryset = Pizza.objects.all()
    #     serializer = PizzaSerializer(queryset, many=True)
    #     return Response(serializer.data)



class PizzaOrderViewSet(viewsets.ModelViewSet):
    """API endpoint that allows PizzaOrder to be views or edit."""

    queryset = PizzaOrder.objects.all().order_by()
    # queryset = PizzaOrder.objects.all().order_by('-id')
    serializer_class = PizzaOrderSerializer


class OrderViewSet(viewsets.ModelViewSet):
    """API endpoint that allows Order to be views or edit."""

    queryset = Order.objects.all().order_by()
    # queryset = PizzaOrder.objects.all().order_by('-id')
    serializer_class = OrderSerializer
