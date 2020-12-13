from django.contrib.auth.models import User
from rest_framework import serializers
from pizza.models import Pizza, PizzaOrder, Order

# class UserSerializer(serializers.HyperlinkedModelSerializer):
class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = ['id', 'username']

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

# class PizzaOrderSerializer(serializers.HyperlinkedModelSerializer):
class PizzaOrderSerializer(serializers.ModelSerializer):
    """PizzaOrderSerializer to provide RESTfull design."""
    pizza = PizzaSerializer(many=False, read_only=True)
    # pizza_id conatins the flavor(s)
    pizza_id = serializers.PrimaryKeyRelatedField(
        source="pizza",
        queryset=Pizza.objects.all()
    )
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

    customer = UserSerializer
    class Meta:
        model = Order
        # fields = "__all__"
        fields = [
            'id',
            'pizzas_id',
            'pizzas',
            'customer',
            ]
