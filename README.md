[![Build Status](https://travis-ci.org/mow09/pizzaspirit.svg?branch=main)](https://travis-ci.org/mow09/pizzaspirit)
[![codecov](https://codecov.io/gh/mow09/pizzaspirit/branch/main/graph/badge.svg?token=YIWAZMEC6D)](https://codecov.io/gh/mow09/pizzaspirit)
## Start the API
1. `git clone https://github.com/mow09/pizzaspirit.git`
2. `cd pizzaspirit/`
3. `docker-compose up --build`
---
## Browse `0.0.0.0:8420/` [PizzaSpiritDocker](http://0.0.0.0:8420/)

_0.0.0.0:8420/ is the root - following root + viewset_
## Viewsets
#### pizza/
- list pizza flavors:
    1. Margarita
    2. Marinara
    3. Salami
- chosen by identifier in pizzaorder
#### pizzaorder/
- list all pizzaorders
- etc.
- set up an pizzaorder:
    - choose pizza flavor by id
    - quantity and
    - size ∈ {'S', 'M', 'L'}
    - like this: {"pizza_id":1,"quantity":1,"size":"M"}
#### order/
- list, create, delete...
- filter:
    - by name like
        - ?customer_username=admin/ (check test data)
    - by order state 
        - ?order_state=O/
            - ('O', 'ordered'),
            - ('C', 'cooking'),
            - ('M', 'moving'),
            - ('D', 'delivered'),
            - ('R', 'received'),


<!-- # pizzaspirit
- [x] add timestamp
- [ ] clean:  into one decorator or function in django model - just for less code
- [ ] split settings 4 real
    - [x] Docker takes another DB -->

## Test data
Test data on http://0.0.0.0:8420/ if docker compose is up.
### Created Pizza Flavors for you :+1:
##### Example data:
```json
    {"id":1, "flavor": "Margarita"}
    {"id":2, "flavor": "Marinara"}
    {"id":3, "flavor": "Salami"}
```
### Take a flovor and create your pizza order
```json
{"pizza_id":1,"quantity":1,"size":"M"}
```
In other words, you want to have one Margarita pizza in medium size - where medium is `get_size_display()`.
### Set an order with ordered pizzas and a customer by id
```json
{"pizzas_id": [1, 2],"customer": 2}
```
Here are the _already-for-you-creted_ customer
1. admin
1. Don
1. Sapore

<!-- ## Testing
- [ ] split it
- pytest
- pytest-django
- pytet-cov
- (mixer)
- [ ] newman, postman
- [ ] test data
 -->

## Thanks to
Postman, Model-Bakery, pytest and DRF

## Going deeper
env:
- TESTDUDE=False
- MACOS=False
- DOCKER


# TODO
- [ ] beauty json response
    - [ ] ViewSets docstring
    - for OPTION
    - HEAD
- [ ] change case sensitiv for filter
- [x] authentication
    - customer = user
- [ ] maybe more testing
<!--
#### Order States
- [ ] check for order PATCH
##### cooking
changed by pizzaspirit
##### moving
changed by pizzaspirit
##### delivered
changed by pizzaspirit
##### recieved
changed by customer -->
