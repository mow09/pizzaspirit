# Generated by Django 3.1.3 on 2020-12-13 15:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pizza', '0002_auto_20201129_1835'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Customer',
        ),
        migrations.DeleteModel(
            name='OrderState',
        ),
        migrations.AlterField(
            model_name='pizza',
            name='flavor',
            field=models.CharField(max_length=42),
        ),
    ]