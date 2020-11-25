# Generated by Django 3.1.3 on 2020-11-25 07:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pizza', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='pizza',
            name='size',
        ),
        migrations.RemoveField(
            model_name='pizzaorder',
            name='cooking',
        ),
        migrations.RemoveField(
            model_name='pizzaorder',
            name='delivered',
        ),
        migrations.RemoveField(
            model_name='pizzaorder',
            name='moving',
        ),
        migrations.RemoveField(
            model_name='pizzaorder',
            name='ordered',
        ),
        migrations.RemoveField(
            model_name='pizzaorder',
            name='ordered_date',
        ),
        migrations.RemoveField(
            model_name='pizzaorder',
            name='received',
        ),
        migrations.AddField(
            model_name='order',
            name='cooking',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='order',
            name='delivered',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='order',
            name='moving',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='order',
            name='ordered',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='order',
            name='received',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='pizzaorder',
            name='size',
            field=models.CharField(choices=[('S', 'small'), ('M', 'medium'), ('L', 'large')], default='M', max_length=1),
        ),
    ]
