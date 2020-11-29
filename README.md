[![Build Status](https://travis-ci.com/mow09/pizzaspirit.svg?=main)](https://travis-ci.com/mow09/pizzaspirit)

# Start the API
### Clone this repository
`git clone https://github.com/mow09/pizzaspirit.git`
####
2. `cd pizzaspirit`
3. `docker-compose up --build`
####
4. Filter
    filterset_fields = ['customer__username', 'order_state']
    admin or don in testdata
    ('O', 'ordered'),
    ('C', 'cooking'),
    ('M', 'moving'),
    ('D', 'delivered'),
    ('R', 'received'),
## http://localhost:8888/order/?search=don
test data customer -
- search

# pizzaspirit
- [x] add timestamp
- [ ] clean:  into one decorator or function in django model - just for less code
- [ ] split settings
    - [x] Docker takes another DB


- [ ] User in Customer
- [ ] User OrderState

## Example data
### username
Don, Sapore, admin
####
## Testing
- [ ] split it
- pytest
- pytest-django
- pytet-cov
- (mixer)
- [ ]
### APITestCase
#### Missing
- [ ] Order APITestCases

# Have `docker-compose` on your machine
## Run docker-compose
# Pizza
The pizza flaves are set and will be used by id.
## Flavors:
1. Margarita
2. Marinara
3. Salami

# Pizza Order
Pizza order is an ordered pizza. We have to set size, pizza_id (contains ingredients - flavor).
## Pizza Order specifics
- choose size
    - ['S', 'M', 'L']
- set pizza_id for flavor
- choose quantity
   - [1,..,n]
# Order
An Order conatins a customer and the ordered pizzas via order_id.
## Order specifics
- pizzas
    - [pizzas], pissas=[pizza_ids] - all the ordered pizzas by id
- customer
    - ...


# Thanks
- postman
- model-bakery
- pytest


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

#### Order States
- [ ] check for order PATCH
##### cooking
changed by pizzaspirit
##### moving
changed by pizzaspirit
##### delivered
changed by pizzaspirit
##### recieved
changed by customer
