from rest_framework import serializers
from pizza.models import (
    Pizza,
    PizzaOrder,
    Order,
    Customer,
    OrderState
    )
from django.contrib.auth.models import User

# class UserSerializer(serializers.HyperlinkedModelSerializer):
class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['username']

class CustomerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Customer
        fields = ['name']

# class PizzaSerializer(serializers.lSerializer):
class PizzaSerializer(serializers.ModelSerializer):
    """PizzaSerializer to provide RESTfull design."""
    class Meta:
        model = Pizza
        # fields = "__all__"
        fields = [
            'id',
            'flavor',
            ]
# class OrderStateSerializer(serializers.ModelSerializer):
#     """PizzaSerializer to provide RESTfull design."""
#     class Meta:
#         model = OrderState
#         fields = "__all__"


# class PizzaOrderSerializer(serializers.HyperlinkedModelSerializer):
class PizzaOrderSerializer(serializers.ModelSerializer):
    """PizzaOrderSerializer to provide RESTfull design."""
    pizza = PizzaSerializer(many=False, read_only=True)
    # pizza_id conatins the flavor(s)
    pizza_id = serializers.PrimaryKeyRelatedField(
        source="pizza",
        queryset=Pizza.objects.all()
    )
    print(pizza_id)
    class Meta:
        model = PizzaOrder
        fields = [
            # 'id',
            # 'customer',
            'pizza_id',
            'pizza',
            'quantity',
            'size',
            # 'created_at',
            ]
        # fields = "__all__"

    def create(self, validated_data):
        print("\n\n\n\n\n\n\n\n")
        print(validated_data)
        for item in validated_data.items():
            print(item)
        print("\n\n\n\n\n\n\n\n")
        return PizzaOrder(**validated_data)

    #     pizza_data = validated_data.pop('pizza')
    #     print(pizza_data)
    #
    #     pizza = PizzaOrder.objects.create(**validated_data)
    #     print(pizza)
    #     Pizza.objects.create(flavor=pizza, **pizza_data)
    #     return pizza



# class OrderSerializer(serializers.HyperlinkedModelSerializer):
class OrderSerializer(serializers.ModelSerializer):
    """OrderSerializer to provide RESTfull design."""
    pizzas = PizzaOrderSerializer(many=True)
    customer = UserSerializer()
    # order_state = OrderStateSerializer()
    # customer = CustomerSerializer()
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
