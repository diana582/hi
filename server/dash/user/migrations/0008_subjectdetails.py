# Generated by Django 4.2.2 on 2023-06-11 06:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0007_rename_username_adminlogin_email'),
    ]

    operations = [
        migrations.CreateModel(
            name='SubjectDetails',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('branch_name', models.CharField(max_length=255)),
                ('subject', models.CharField(max_length=255)),
            ],
        ),
    ]
