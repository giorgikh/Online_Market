import random

from django.contrib import messages
from django.db.models import Q
from django.shortcuts import render, get_object_or_404, redirect
from django.utils.translation import ugettext as _

from .forms import AddToCartForm
from .models import Category, Product

from ..cart.cart import Cart

def search(request):
    query = request.GET.get('query', '')
    print(query)
    products = Product.objects.filter(Q(title__icontains=query) | Q(description__icontains=query))
    print(products)

    return render(request, 'product/search.html', {'products': products, 'query': query})


def product(request, category_slug, product_slug):
    cart = Cart(request)
    product = get_object_or_404(Product, category__slug=category_slug, slug=product_slug)

    images_string = '{"thumbnail": "%s", "image": "%s", "id": "mainimage"},' % (product.get_thumbnail(), product.image.url)
    print("ssssssssssssssssss",product.image.url)
    # print(images_string)
    # print(product.images.all(),"ssssss")
    for image in product.images.all():
        if not image.image:
            continue
            # print("carielia da gamotovos")
        print(image.image,"ssssssssss")
        images_string += '{"thumbnail": "%s", "image": "%s", "id": "%s"},' % (image.get_thumbnail(), image.image.url, image.id)
    if request.method == 'POST':
        form = AddToCartForm(request.POST)
        if form.is_valid():
            quantity = form.cleaned_data['quantity']
            cart.add(product_id=product.id, quantity=quantity, update_quantity=False)
            messages.success(request, _("Product was added to the cart"))
            return redirect('product', category_slug=category_slug, product_slug=product_slug)
    else:
        form = AddToCartForm()

    similar_products = list(product.category.products.exclude(id=product.id))

    if len(similar_products) >= 4:
        similar_products = random.sample(similar_products, 4)
    context = {
        'form': form,
        'product': product,
        'similar_products': similar_products,
        "images_string": "[" + images_string.rstrip(',') + "]"
    }
    return render(request, 'product/product.html', context)


def category(request, category_slug):
    category = get_object_or_404(Category, slug=category_slug)
    print(category)
    return render(request, 'product/category.html', {'category': category})
