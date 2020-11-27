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
        fields = [
        # 'id',
        'name'
        ]

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
    # print(pizza_id)
    pizza = PizzaSerializer(many=False, read_only=True)
    class Meta:
        model = PizzaOrder
        fields = [
            'id',
            # 'customer',
            'pizza_id',
            'pizza',
            'quantity',
            'size',
            # 'created_at',
            ]
        # fields = "__all__"

    def create(self, validated_data):
        pizza_order = PizzaOrder(**validated_data)
        # print("HEHEHEEHEHEHEHHEH: "+validated_data)
        for i in validated_data.items():
             print(i)
             print(i)
             print(i)
        pizza_order.save()
        return pizza_order



# class OrderSerializer(serializers.HyperlinkedModelSerializer):
class OrderSerializer(serializers.ModelSerializer):
    """OrderSerializer to provide RESTfull design."""
    pizzas = PizzaOrderSerializer(many=True, read_only=True)
    pizzas_id = serializers.PrimaryKeyRelatedField(
        source="pizzas",
        many=True,
        queryset=PizzaOrder.objects.all()
    )

    # pizza = PizzaSerializer(many=False, read_only=True)
    # # pizza_id conatins the flavor(s)
    # pizza_id = serializers.PrimaryKeyRelatedField(
    #     source="pizza",
    #     queryset=Pizza.objects.all()
    # )
    customer = CustomerSerializer
    class Meta:
        model = Order
        # fields = "__all__"
        fields = [
            'id',
            'pizzas_id',
            'pizzas',
            'customer',
            ]

    # def create(self, validated_data):
    #     print(validated_data)
    #     for i in validated_data['pizzas']:
    #         print(i)
    #         for j in i:
    #             print(i[j])
    #     print()
    #     print(validated_data.keys())
    #     # for k, v in validated_data.items():
    #     #     print(k, v)
    #     #     print()
    #     #     if k=='pizzas':
    #     #         for pizza in v:
    #     #             print(pizza)
    #     #     print()
    #     print()
    #     # pizzas = validated_data['pizzas']
    #     # pizzas = validated_data['pizzas']
    #     customer = validated_data['customer']
    #     print()
    #     print(customer.id)
    #     print(customer.__dict__.keys())
    #     # print()
    #     # print(pizzas)
    #     print()
    #     print()
    #     order = Order(**validated_data)
    #     print(order)
    #     order.save()
    #     # order.save()
    #     return order

        # fields = [
        #     'id',
        #     'customer',
        #     'pizzas_id'
        #     'pizzas',
        #     'order_state',
        # ]
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
