from rest_framework import serializers
from pizza.models import (
    Pizza,
    PizzaOrder,
    Order,
    # Customer,
    )
from django.contrib.auth.models import User

# class UserSerializer(serializers.HyperlinkedModelSerializer):
class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['url', 'username', 'email', 'groups']

# class PizzaSerializer(serializers.HyperlinkedModelSerializer):
class PizzaSerializer(serializers.ModelSerializer):
    """PizzaSerializer to provide RESTfull design."""
    class Meta:
        model = Pizza
        fields = [
            'id',
            'flavor',
            ]


# class PizzaOrderSerializer(serializers.HyperlinkedModelSerializer):
class PizzaOrderSerializer(serializers.ModelSerializer):
    """PizzaOrderSerializer to provide RESTfull design."""
    # customer = UserSerializer(many=False)
    pizza = PizzaSerializer(read_only=True, many=False)
    class Meta:
        model = PizzaOrder
        # fields = [
        #     'id',
        #     # 'customer',
        #     'pizza',
        #     'quantity',
        #     'size',
        #     'created_at',
        #     ]
        fields = "__all__"


# class OrderSerializer(serializers.HyperlinkedModelSerializer):
class OrderSerializer(serializers.ModelSerializer):
    """OrderSerializer to provide RESTfull design."""
    pizzas = PizzaOrderSerializer(many=True)
    customer = UserSerializer(many=False)
    class Meta:
        model = Order
        fields = "__all__"

        # fields = [
        #     'id',
        #     'customer',
        #     'pizzas',
        #     'ordered',
        #     'cooking',
        #     'moving',
        #     'delivered',
        #     'received',
        #
        # ]

    # def validate(self, data):
    #     """
    #     Check that start is before finish.
    #     """
    #     if data['start'] > data['finish']:
    #         raise serializers.ValidationError("finish must occur after start")
    #     return data
