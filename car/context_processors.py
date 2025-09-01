# car/context_processors.py

from .models import Vehicle_Catagory

def vehicle_categories_processor(request):
    """
    Adds a list of all vehicle categories to the context of every template.
    """
    categories = Vehicle_Catagory.objects.all()
    return {'vehicle_categories': categories}