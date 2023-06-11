
# Create your models here.
from django.db import models

class Classroom(models.Model):
    name = models.CharField(max_length=255)
    block = models.CharField(max_length=255)
    rows = models.IntegerField()
    columns = models.IntegerField()

    def __str__(self):
        return self.name

class SubjectDetails(models.Model):
    branch_name = models.CharField(max_length=255)
    sub_name = models.CharField(max_length=255)

    def __str__(self):
        return self.branch_name
    
class StudentDetails(models.Model):
    class_name = models.CharField(max_length=255)
    roll_no = models.IntegerField()

    def __str__(self):
        return self.class_name
    
class TimeTable(models.Model):
    branch_name = models.CharField(max_length=255)
    subject_name = models.CharField(max_length=255)
    date = models.CharField(max_length=255)
    session = models.CharField(max_length=2)
    

    def __str__(self):
        return self.branch_name_name

class AdminLogin(models.Model):
    email = models.CharField(max_length=50)
    password = models.CharField(max_length=50)
    primary_key_attribute = models.AutoField(primary_key=True)

    def str(self):
        return self.username
    
    def str(self):
        return self.primary_key_attribute
