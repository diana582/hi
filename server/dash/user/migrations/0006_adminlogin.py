# Generated by Django 4.2.2 on 2023-06-11 06:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0005_classroom_delete_adminreg'),
    ]

    operations = [
        migrations.CreateModel(
            name='AdminLogin',
            fields=[
                ('username', models.CharField(max_length=50)),
                ('password', models.CharField(max_length=50)),
                ('primary_key_attribute', models.AutoField(primary_key=True, serialize=False)),
            ],
        ),
    ]
