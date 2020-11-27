import json
from pizza.models import Pizza, Order, PizzaOrder, Customer
from api.serializers import PizzaSerializer, OrderSerializer, PizzaOrderSerializer

# from django.contrib.auth.models import User
from django.urls import reverse, resolve

from rest_framework.test import APITestCase
from rest_framework import status, serializers

from model_bakery import baker

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
        response = self.client.post("/pizzaorder/", data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)


class OderSerializerTestCase(APITestCase):

    def setUP(self):
        # self.pizzas = baker.prepare(PizzaOrder, _quantity=2)
        self.customer = baker.make('pizza.Customer')


        # print(customer)

    def test_order_post(self):
        # get it by querry
        # customer = self.customer.objects.all()
        # print(pizzas)
        customer = Customer.objects.all()
        # print(customer)
        data = {
            # "pizzas": [],
            # "customer": customer
            }
        response = self.client.post("/pizzaorder/", data, format='json')
        # self.assertEqual(response.status_code, status.HTTP_201_CREATED)
