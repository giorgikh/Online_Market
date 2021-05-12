from django.shortcuts import render, redirect
from django.conf import settings
from django.contrib import messages
from .forms import CheckoutForm
from ..order.utilities import checkout
from .cart import Cart

import stripe


""" TO DO
1. პროდუქტის კალათაში დამატებისას გასათვალისწინებელია input-ში მითითებული რაოდენობა  
"""

def cart_detail(request):
    cart = Cart(request)

    if request.method == 'POST':
        form = CheckoutForm(request.POST)

        if form.is_valid():
            stripe.api_key = settings.STRIPE_SECRET_KEY
            stripe_token = form.cleaned_data['stripe_token']

            charge = stripe.Charge.create(
                # stripe ელოდება თანხა ცენტებში და ამიტომ საჭიროა გამრავლება 100ზე
                amount=int(cart.get_total_cost() * 100),
                currency='USD',
                description='charge from Techmarket',
                source=stripe_token
            )

            first_name = form.cleaned_data['first_name']
            last_name = form.cleaned_data['last_name']
            email = form.cleaned_data['email']
            phone = form.cleaned_data['phone']
            address = form.cleaned_data['address']
            zip_code = form.cleaned_data['zip_code']
            place = form.cleaned_data['place']
            amount = cart.get_total_cost()

            order = checkout(request, first_name, last_name, email, address, zip_code, phone, place, amount)

            cart.clear()

            return redirect('success')
    else:
        form = CheckoutForm()

    remove_from_cart_id = request.GET.get('remove_from_cart', '')
    change_quantity_id = request.GET.get('change_quantity', '')
    quantity = request.GET.get('quantity', 0)

    if remove_from_cart_id:
        cart.remove(remove_from_cart_id)
        return redirect('cart')

    if change_quantity_id:
        cart.add(change_quantity_id, quantity, True)
        return redirect('cart')
    return render(request, 'cart/cart.html', {'form': form, "stripe_pub_key": settings.STRIPE_PUB_KEY})


def success(request):
    return render(request, 'cart/success.html')
