[![Build Status](https://travis-ci.com/mow09/pizzaspirit.svg?=main)](https://travis-ci.com/mow09/pizzaspirit)

# Start the API
1. `git clone https://github.com/mow09/pizzaspirit`
2. `cd pizzaspirit`
3. `docker-compose up --build




# pizzaspirit
- [x] add timestamp
- [ ] clean:  into one decorator or function in django model - just for less code
- [ ] split settings
    - [ ] Docker takes another DB


- [ ] separate orderstate / status
    - [ ] ```class OrderState()```
    - [ ] if changed - change others
    - order state needs a funktion to change not update

- [ ] User in Customer
- [ ] User OrderState


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

### Binding to views
```python
user_list = UserViewSet.as_view({'get': 'list'})
user_detail = UserViewSet.as_view({'get': 'retrieve'})
def list(self, request):
def retrieve(self, request, pk=None):


class UserViewSet(viewsets.ViewSet):
    def list(self, request):
        pass

    def create(self, request):
        pass

    def retrieve(self, request, pk=None):
        pass

    def update(self, request, pk=None):
        pass

    def partial_update(self, request, pk=None):
        pass

    def destroy(self, request, pk=None):
        pass

class UserViewSet(viewsets.ModelViewSet):
    """
    A viewset that provides the standard actions
    The actions provided by the ModelViewSet class are .list(), .retrieve(), .create(), .update(), .partial_update(), and .destroy().
    """
    queryset = User.objects.all()
    serializer_class = UserSerializer


def get_permissions(self):
    """
    Instantiates and returns the list of permissions that this view requires.
    """
    if self.action == 'list':
        permission_classes = [IsAuthenticated]
    else:
        permission_classes = [IsAdmin]
    return [permission() for permission in permission_classes]

@action(detail=True, methods=['post', 'delete'])

# TODO: try this one if it breaks detail-order...
@action(detail=False)
```
```python
created_at = models.DateTimeField(auto_now_add=True)
updated_at = models.DateTimeField(auto_now=True)

def get_timestamp(self):
    """Return a string of created_at and updated_at."""
    return f"Created: {self.created_at}, Updated: {self.updated_at}"
```

# Order States
## cooking
changed by pizzaspirit
## moving
changed by pizzaspirit
## delivered
changed by pizzaspirit
## recieved
changed by customer


# Thanks
- postman
- model-bakery
- pytest

## Going deeper
env:
- TESTDUDE=False
- MACOS=False
- DOCKER


### if missing migration on postgres db
```
django.db.utils.ProgrammingError: relation "django_session" does not exist
LINE 1: ...ession_data", "django_session"."expire_date" FROM "django_se..
```
