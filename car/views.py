from django.shortcuts import render,redirect
from .models import *

# Create your views here.

def home(request):
    catagories = Vehicle_Catagory.objects.all()
    context = {'catagories':catagories , 'veh_details':True}
    return render(request,'home.html',context)

def catagoryType(request,id):
    types = Vehicle_type.objects.filter(catagory=id)
    context = {'types':types,'veh_details':False}
    return render(request,'catagories.html',context)

def vehDetails(request,id):
    items = Vehicle_Details.objects.filter(vehicle_type=id)
    context= {'items':items,'veh_details':False}
    return render(request,'vehDetails.html',context)

def productDetails(request,id):
    products = Vehicle_Details.objects.get(id=id)
    context= {'products':products,'veh_details':False}
    return render(request,'productDetails.html',context)

def allDetails(request):
    items = Vehicle_Details.objects.all()
    context= {'items':items,'veh_details':False}
    return render(request,'allVeh.html',context)


