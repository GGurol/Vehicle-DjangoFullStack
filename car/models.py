from django.db import models

# Create your models here


class Vehicle_Catagory(models.Model):
    Catagory_name = models.CharField(max_length=50,null=False,blank=False)
    Image = models.ImageField(upload_to='carImages/' ,default="pexels-alexander-pollinger-137430820-105668981.jpg") 
    created = models.DateField(auto_now_add=True)
    updated = models.DateField(auto_now=True)
    
    def __str__(self):
        return self.Catagory_name
    
class Vehicle_type(models.Model):
    catagory = models.ForeignKey(Vehicle_Catagory,on_delete=models.CASCADE)
    company_name = models.CharField(max_length=80)
    Image = models.ImageField(upload_to='carImages/' ,default="") 
    created = models.DateField(auto_now_add=True)
    updated = models.DateField(auto_now=True)
    
    def __str__(self):
        return self.company_name
    

class Vehicle_Details(models.Model):
    vehicle_type = models.ForeignKey(Vehicle_type,on_delete=models.CASCADE) 
    name = models.CharField(max_length=100,null=False,blank=False)
    original_price = models.IntegerField(null=False)
    selling_price = models.IntegerField(null=False)
    description = models.TextField(max_length=250)
    Image = models.ImageField(upload_to='carImages/')
    created = models.DateField(auto_now_add=True)
    updated = models.DateField(auto_now=True)
    
    def __str__(self):
        return self.name
    
