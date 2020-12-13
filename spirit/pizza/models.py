from django.conf import settings
from django.db import models


SIZE_CHOICES = (
    ('S', 'small'),
    ('M', 'medium'),
    ('L', 'large'),
)

ORDER_STATE_CHOICES =  (
    ('O', 'ordered'),
    ('C', 'cooking'),
    ('M', 'moving'),
    ('D', 'delivered'),
    ('R', 'received'),
)


class Pizza(models.Model):
    """The Pizza."""

    flavor = models.CharField(
        max_length=42,
        )


    def __str__(self):
        return f"Pizza {self.flavor}"


class PizzaOrder(models.Model):
    """An ordered pizza."""

    pizza = models.ForeignKey(
        Pizza,
        on_delete=models.CASCADE,
        related_name='pizza',
        null=True
        )

    size =  models.CharField(
        choices=SIZE_CHOICES,
        max_length=1,
        default='M'
        )
    quantity = models.IntegerField(default=1)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
#
    def get_timestamp(self):
        """Return a string of created_at and updated_at."""
        return f"Created: {self.created_at}, Updated: {self.updated_at}"

    def __str__(self):
        return f"{self.quantity}x {self.pizza.get_flavor_display().title()}\
         in size {self.size}"


class Order(models.Model):
    """The whole order."""

    customer = models.ForeignKey(
        settings.AUTH_USER_MODEL,
        on_delete=models.CASCADE,
        related_name='customer',
        )
    pizzas = models.ManyToManyField(
            PizzaOrder,
            related_name='pizzas'
            )
    order_state =  models.CharField(
        choices=ORDER_STATE_CHOICES,
        max_length=1,
        default='O'
        )

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)


    def get_timestamp(self):
        """Return a string of created_at and updated_at."""
        return f"Created: {self.created_at}, Updated: {self.updated_at}"

    def __str__(self):
        return f"By {self.customer}"
