import json
from pizza.models import Pizza, Order, PizzaOrder, Customer
from api.serializers import PizzaSerializer, OrderSerializer, PizzaOrderSerializer

# from django.contrib.auth.models import User
from django.urls import reverse, resolve

from rest_framework.test import APITestCase
from rest_framework import status, serializers

from model_bakery import baker
from model_bakery.recipe import Recipe



class PizzaSerializerTestCase(APITestCase):

    # ('Margarita', 'margarita'),
    # ('Marinara', 'marinara'),
    # ('Salami', 'salami'),

    def test_pizza_post(self):
        data = {"flavor": "Marinara"}
        response = self.client.post("/pizza/", data)
        # print(data)
        # response = self.client.post('api:pizza', data)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)



class PizzaOderSerializerTestCase(APITestCase):
    def setUp(self):
        self.pizza = baker.make(Pizza)

    def test_pizza_order_post(self):
        data = {"pizza_id":1,"quantity":1,"size":"M"}
        print(self.pizza)
        print(self.pizza)
        print(self.pizza)
        print(self.pizza)
        print(self.pizza)
        print(self.pizza)
        print(self.pizza)
        print(self.pizza)
        print(self.pizza)
        print(self.pizza)
        response = self.client.post("/pizzaorder/", data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)


# class OderSerializerTestCase(APITestCase):
#     def setUP(self):
#         print("TEST")
#         self.customer = baker.make(Customer)
#         self.pizzas = baker.make(PizzaOrder)
        # self.pizzas_recipe = Recipe(PizzaOrder,
        #     id=1,
        #     pizza=foreign_key(pizza_recipe),
        #     size='S',
        #     quantity=5
        # )
        # self.pizzas_recipe.make()
        # self.pizzas =

    # def test_order_post(self):
        # print(self.customer)
        # pizza_serializer = PizzaSerializer(id=1)
        # pizza_order_1 = self.pizzas_recipe.make()
        # print(pizza_order_1)
        # obj = Pizza.objects.get(pk=1)
        # print(obj)
        # print(pizza_serializer.data.id)
        # pizza_order_serializer = PizzaOrderSerializer(pizza=1, quantity=42, size="M")
        # data = {"pizzas_id": [1],"customer": 1}
        # print()
        # print(data)
        # data = {"pizza_id":1,"quantity":1,"size":"M"}

        # print()
        # customer = self.customer.objects.all()
        # print(pizzas)
        # customer = Customer.objects.all()
        # print(customer)
        # response = self.client.post("/order/", data, format='json')
        # print(response.data)
        # print()
        # self.assertEqual(response.status_code, status.HTTP_201_CREATED)
