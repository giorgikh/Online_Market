from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import login
from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import UserCreationForm
from django.utils.text import slugify

from .models import Vendor
from ..product.models import Product
from .forms import ProductForm



def become_vendor(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            login(request, user)
            vendor = Vendor.objects.create(name=user.username, created_by=user)
            return redirect('front_page')

        else:
            print("aravaliduri")
    else:
        form = UserCreationForm()

    return render(request, 'vendor/become_vendor.html', {'form':form})

@login_required
def vendor_admin(request):
    vendor = request.user.vendor
    # print(Product.vendor)
    products = vendor.products.all()
    orders = vendor.orders.all()

    for order in orders:
        order.vendor_amount = 0
        order.vendor_paid_amount = 0
        order.fully_paid = True

        for item in order.items.all():
            if item.vendor == request.user.vendor:
                if item.vendor_paid:
                    order.vendor_paid_amount += item.get_total_price()
                else:
                    order.vendor_amount += item.get_total_price()
                    order.fully_paid = False

    return render(request, 'vendor/vendor_admin.html',{"vendor": vendor, "products": products, 'orders': orders})

@login_required
def add_product(request):
    if request.method == 'POST':
        print("postii")
        form = ProductForm(request.POST, request.FILES)
        if form.is_valid():
            print("valid")
            product = form.save(commit=False)
            product.vendor = request.user.vendor
            product.slug = slugify(product.title)
            product.save()

            return redirect('vendor_admin')
        else:
            print("not valid")
    else:
        form = ProductForm()

    return render(request, 'vendor/add_product.html', {"form": form})


@login_required
def edit_vendor(request):
    vendor = request.user.vendor
    if request.method == 'POST':
        name = request.POST.get('name', '')
        password = request.POST.get('password', '')

        if name:
            vendor.password = password
            vendor.created_by.save()

            vendor.name = name
            vendor.save()
            return redirect('vendor_admin')

    return render(request, 'vendor/edit_vendor.html', {'vendor': vendor})


def vendors(request):
    vendors = Vendor.objects.all()
    return render(request, 'vendor/vendor.html', { "vendors": vendors})


def vendor_item(request, vendor_id):
    vendor = get_object_or_404(Vendor, pk=vendor_id)
    return render(request, 'vendor/vendors_item.html', {'vendor': vendor})
