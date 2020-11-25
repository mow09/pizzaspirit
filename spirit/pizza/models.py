from django.conf import settings
from django.db import models


SIZE_CHOICES = (
    ('S', 'small'),
    ('M', 'medium'),
    ('L', 'large'),
)

FLAVOR_CHOICES =  (
    ('Margarita', 'margarita'),
    ('Marinara', 'marinara'),
    ('Malami', 'salami'),
)
# FLAVOR_CHOICES =  (
#     ('01', 'margarita'),
#     ('02', 'marinara'),
#     ('03', 'salami'),
# )
class Order(models.Model):
    """The whole order."""

    customer = models.ForeignKey(
        settings.AUTH_USER_MODEL,
        on_delete=models.CASCADE,
        related_name='customer'
        )

    # order_state = models.ForeignKey(
    #     OrderState,
    #     on_delete=models.CASCADE,
    #     related_name='order_state',
    #     )

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    # maybe all are cooking, moving, delivered
    # change all of one bool for all pizzas... subfunction

    def get_timestamp(self):
        """Return a string of created_at and updated_at."""
        return f"Created: {self.created_at}, Updated: {self.updated_at}"

    def __str__(self):
        return f"By {self.customer}"

class PizzaOrder(models.Model):
    """An ordered pizza."""

    # customer = models.ForeignKey(
    #     settings.AUTH_USER_MODEL,
    #     on_delete=models.CASCADE,
    #     related_name='customer'
    #     )
    # pizza = models.ForeignKey(
    #     Pizza,
    #     on_delete=models.CASCADE,
    #     related_name='pizza',
    #     )

    pizza_order = models.ManyToManyField(
        Order,
        related_name='pizzas'
        )
    size =  models.CharField(
        choices=SIZE_CHOICES,
        max_length=1,
        default='M'
        )
    quantity = models.IntegerField(default=1)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    # TODO:
    # function:
    # if ordered = true --> start cooking true)
    # change one of...
    # def is_ordered(self):
    #     print('pizza is coocking')
    #     self.cooking = True
    #
    # def is_moving(self):
    #     print('pizza is moving')
    #     self.cooking = False
    #     self.moving = True
    #
    # def is_delivered(self):
    #     self.moving = False
    #     self.delivered = True
    #
    # def is_received(self):
    #     self.received = True
    #
    # def get_stats():
    #     ...



    def get_timestamp(self):
        """Return a string of created_at and updated_at."""
        return f"Created: {self.created_at}, Updated: {self.updated_at}"

    def __str__(self):
        return f"{self.quantity}x {self.pizza.get_flavor_display().title()}\
         in size {self.size}"


class OrderState(models.Model):
    """Order state to provide status."""

    order = models.ForeignKey(
        Order,
        related_name='order_state',
        on_delete=models.CASCADE
        )
    # ordered_date = models.DateTimeField()
    ordered = models.BooleanField(default=False)

    cooking = models.BooleanField(default=False)
    moving = models.BooleanField(default=False)
    delivered = models.BooleanField(default=False)
    received = models.BooleanField(default=False)
#     order_id =
    # order_id = models.IntegerField(
    #     Order,
    #     on_delete=models.CASCADE,
    #     related_name='id',  # id in Order when made...
    #     )



class Pizza(models.Model):
    """The Pizza."""

    # order_id =

    flavor = models.CharField(
        choices=FLAVOR_CHOICES,
        max_length=42,
        )
    pizza = models.ForeignKey(
        PizzaOrder,
        related_name='pizza',
        on_delete=models.CASCADE,
        null=True
        )
    # flavor = models.IntegerField(
    #     choices=FLAVOR_CHOICES,
    #     )

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def get_timestamp(self):
        """Return a string of created_at and updated_at."""
        return f"Created: {self.created_at}, Updated: {self.updated_at}"

    def __str__(self):
        return f"Pizza {self.get_flavor_display().title()}"
