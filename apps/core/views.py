from django.shortcuts import render

# Create your views here.
def front_page(request):
    return render(request, 'core/frontpage.html')


def contact_page(request):
    return render(request, 'core/contact.html')