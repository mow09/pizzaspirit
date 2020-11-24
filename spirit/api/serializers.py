from rest_framework import serializers
from pizza.models import (
    Pizza,
    PizzaOrder,
    Order,
    )


class PizzaSerializer(serializers.HyperlinkedModelSerializer):
    """PizzaSerializer to provide RESTfull design."""
    class Meta:
        model = Pizza
        fields = [
            'id',
            'flavor',
            'size',
            ]


class PizzaOrderSerializer(serializers.HyperlinkedModelSerializer):
    """PizzaOrderSerializer to provide RESTfull design."""
    class Meta:
        model = PizzaOrder
        fields = [
            'id',
            'customer',
            'pizza',
            'quantity',
            'created_at',
            'ordered',
            'cooking',
            'moving',
            'delivered',
            'received',
            ]


class OrderSerializer(serializers.HyperlinkedModelSerializer):
    """OrderSerializer to provide RESTfull design."""
    class Meta:
        model = Order
        fields = [
            'id',
            'customer',
            'pizzas',
        ]
