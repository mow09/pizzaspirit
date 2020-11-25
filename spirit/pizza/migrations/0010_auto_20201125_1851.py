# Generated by Django 3.1.3 on 2020-11-25 18:51

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pizza', '0009_auto_20201125_1838'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='orderstate',
            name='order',
        ),
        migrations.RemoveField(
            model_name='pizza',
            name='pizza',
        ),
        migrations.RemoveField(
            model_name='pizzaorder',
            name='pizza_order',
        ),
        migrations.AddField(
            model_name='order',
            name='order_state',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='order_state', to='pizza.orderstate'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='order',
            name='pizzas',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='pizzas', to='pizza.pizzaorder'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='pizzaorder',
            name='pizza',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='pizza', to='pizza.pizza'),
            preserve_default=False,
        ),
    ]
