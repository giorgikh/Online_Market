from django.shortcuts import render
from ..product.models import Product
# Create your views here.
from django.utils.translation import activate
def front_page(request):
    # activate('ka')
    # ბაზიდან ბოლოს დამატებული 8 პროდუქტის წამოღება
    newest_products = Product.objects.all()[0:8]
    return render(request, 'core/frontpage.html', {"newest_products": newest_products})


def contact_page(request):
    return render(request, 'core/contact.html')


def change_language(request):
    print(request.GET.get('lang'))
    print("-------------------------")
    return
    # activate(str(lang))
