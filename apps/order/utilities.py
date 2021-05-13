from django.conf import settings
# from django.core.mail import EmailMultiAlternatives
# from django.template.loader import render_to_string

from ..cart.cart import Cart
from ..order.models import OrderItem, Order

def checkout(request, first_name, last_name, email, address, zip_code, phone, place, amount):
    order = Order.objects.create(first_name=first_name, last_name=last_name, email=email, address=address, zip_code=zip_code, phone=phone, place=place, paid_amount=amount)

    for item in Cart(request):
        OrderItem.objects.create(order=order, product=item['product'], vendor=item['product'].vendor, price=item['product'].price, quantity=item['quantity'])
        order.vendors.add(item['product'].vendor)

    return order

# def notify_vendor(order):
#     from_email = settings.DEFAULT_EMAIL_FROM
#
#     for vendor in order.vendors.all():
