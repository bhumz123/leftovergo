from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

class User(AbstractUser):
    
    first_name= models.CharField()
    last_name = models.CharField(max_length=50)
    Category=models.CharField(max_length=50)

    def __str__(self):
        return "%s %s" % (self.first_name, self.last_name)
    


