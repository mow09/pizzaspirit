from django.conf import settings
from django.db import models


SIZE_CHOICES = (
    ('S', 'small'),
    ('M', 'medium'),
    ('L', 'large'),
)

FLAVOR_CHOICES =  (
    ('1', 'margarita'),
    ('2', 'marinara'),
    ('3', 'salami'),
)


class Pizza(models.Model):
    """The Pizza."""

    flavor = models.IntegerField(
        choices=FLAVOR_CHOICES,
        )
    size =  models.CharField(
        choices=SIZE_CHOICES,
        max_length=1,
        default='M'
        )

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def get_timestamp(self):
        """Return a string of created_at and updated_at."""
        return f"Created: {self.created_at}, Updated: {self.updated_at}"

    def __str__(self):
        return f"Pizza {self.get_flavor_display().title()}\
                    in {self.get_size_display()} size."


class PizzaOrder(models.Model):
    """An ordered pizza."""

    customer = models.ForeignKey(
        settings.AUTH_USER_MODEL,
        on_delete=models.CASCADE
        )
    pizza = models.ForeignKey(
        Pizza,
        on_delete=models.CASCADE
        )
    quantity = models.IntegerField(default=1)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    # return as a string
    ordered_date = models.DateTimeField()
    ordered = models.BooleanField(default=False)

    cooking = models.BooleanField(default=False)
    moving = models.BooleanField(default=False)
    delivered = models.BooleanField(default=False)
    received = models.BooleanField(default=False)

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
        return f"{self.quantity} of {self.pizza.get_flavor_display().title()}\
                    by {self.customer.username}."


class Order(models.Model):
    """The whole order."""

    customer = models.ForeignKey(
        settings.AUTH_USER_MODEL,
        on_delete=models.CASCADE
        )
    pizzas = models.ManyToManyField(
        PizzaOrder
        )

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    # maybe all are cooking, moving, delivered
    # change all of one bool for all pizzas... subfunction

    def get_timestamp(self):
        """Return a string of created_at and updated_at."""
        return f"Created: {self.created_at}, Updated: {self.updated_at}"
