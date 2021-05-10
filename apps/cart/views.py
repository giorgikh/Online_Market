from django.shortcuts import render, redirect

from .cart import Cart

""" TO DO
1. პროდუქტის კალათაში დამატებისას გასათვალისწინებელია input-ში მითითებული რაოდენობა  
"""

def cart_detail(request):
    cart = Cart(request)
    remove_from_cart_id = request.GET.get('remove_from_cart', '')
    change_quantity_id = request.GET.get('change_quantity', '')
    quantity = request.GET.get('quantity', 0)

    if remove_from_cart_id:
        cart.remove(remove_from_cart_id)
        return redirect('cart')

    if change_quantity_id:
        cart.add(change_quantity_id, quantity, True)
        return redirect('cart')
    return render(request, 'cart/cart.html')
