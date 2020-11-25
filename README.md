# pizzaspirit
- [ ] add timestamp
- [ ] clean:  into one decorator or function in django model - just for less code
- [ ] setup Postgres
    - `Docker`
- [ ] split settings
- [ ] separate order state from Order
    - order state needs a funktion to change not update
- [ ] add order_id to Pizza class when its added to cart !!!
- [ ] create a serializer to change Pizzas in

## howto
### Customer
- [ ] get pizza flavors from Model Pizza
- [ ] get order state

### Pizza Spirit
- [ ] hide pizzaorder - is just for the backend to create an order
- [ ] change (not update?) state of order

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
## Model
### Pizza
### PizzaOrder
### Order

# Order state
## cooking
changed by pizzaspirit
## moving
changed by pizzaspirit
## delivered
changed by pizzaspirit
## recieved
changed by customer
