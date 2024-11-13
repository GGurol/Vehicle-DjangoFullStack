from django.urls import path
from . import views

urlpatterns = [
    path('',views.home,name='home'),
    path('catagory/<str:id>',views.catagoryType,name='CarType'),
    path('catagory/veh_details/<str:id>',views.vehDetails,name='veh_details'),
    path('catagory/veh_details/productDetails/<str:id>',views.productDetails,name="productDetails"),
    path('all_details',views.allDetails,name="allDetails")
]
