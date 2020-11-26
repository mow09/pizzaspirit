import json
from pizza.models import Order, PizzaOrder
from api.serializers import OrderSerializer, PizzaOrderSerializer

from django.urls import reverse, resolve

from rest_framework.test import APITestCase
from rest_framework import status


class PizzaTestCase(APITestCase):

    # ('Margarita', 'margarita'),
    # ('Marinara', 'marinara'),
    # ('Salami', 'salami'),

    def test_pizza_post(self):
        data = {"flavor": "Marinara"}
        response = self.client.post("/pizza/", data)
        # print(data)
        # response = self.client.post('api:pizza', data)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)


class PizzaOderTestCase(APITestCase):

    def test_pizza_order_post(self):
        data = {"pizza:": {"flavor": "Margarita"}, "size": "L", "quantity": 3}
        print(data)
        response = self.client.post("/pizzaorder/", data, format='json')
        print(data)
        # response = self.client.post('api:pizza', data)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)


class OderTestCase(APITestCase):

    def setUP(self):
        ...

# class PizzaOrderTestCase(APITestCase):
#
#     def test_pizzaorder_api(self):
#         data = {
#             "pizza" : {
#                 "flavor": "Salami"
#             },
#             "size": "L",
#             "quantity": 3,
#         }
#         response = self.client.post('api:pizzaorder', data)
#         self.assertEqual(response.status, status.HTTP_201_CREATED)
        # path = reverse('api:pizzaorder')
        # assert resolve(path).view_name == 'api:pizzaorder'


# class TestApi:
#
#     def test_pizza_api(self):
#         path = reverse('api:pizza')
#         assert resolve(path).view_name == 'api:pizza'
    #
    #
    # def test_order_api(self):
    #     path = reverse('api:order')
    #     # ID first object
    #     # path = reverse('api:order', kwargs={'pk': 1})
    #     assert resolve(path).view_name == 'api:order'