# Generated by Django 3.1.3 on 2020-11-25 20:32

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pizza', '0016_auto_20201125_2021'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='order_state',
            field=models.ForeignKey(blank=True, on_delete=django.db.models.deletion.CASCADE, related_name='order_state', to='pizza.orderstate'),
        ),
    ]