from django.conf import  settings
from ..product.models import Product

class Cart(object):
    # სესიისა და კალათის აღწერა
    def __init__(self, request):
        self.session = request.session
        cart = self.session.get(settings.CART_SESSION_ID)
        if not cart:
            cart = self.session[settings.CART_SESSION_ID] = {}
        self.cart = cart
        # print(self.cart)

    # კლასის გამოძახებისას მოხდეს ბაზიდან პროდქუტის აიდის წაკითხვა და მისი ფასის გამოთვლა
    def __iter__(self):
        for pk in self.cart.keys():
            self.cart[str(pk)]['product'] = Product.objects.get(pk=pk)

        for item in self.cart.values():
            item['total_price'] = item['product'].price * item['quantity']

            yield item

    # კალათაში ნივთების ჯამური რაოდენობა
    def __len__(self):
        return sum(item['quantity'] for item in self.cart.values())

    # ალათაში ნივთის დამატება
    def add(self, product_id, quantity=1, update_quantity=False):
        product_id = str(product_id)

        # პირველი ნივთი კალათაში
        if product_id not in self.cart:
            self.cart[product_id] = {'quantity': 1, 'id': product_id}

        # ახალი ნივთის დამატება კალათაში
        if update_quantity:
            self.cart[product_id]['quantity'] += int(quantity)

            # კალათიდან ნივთის ამოშლა
            if self.cart[product_id]['quantity'] == 0:
                self.remove(product_id)

        self.save()

    # კალათიდან პროდუქტის ამოშლა
    def remove(self, product_id):
        if product_id in self.cart:
            del self.cart[product_id]
            self.save()

    # ფორმისა და სესიის წაშლა
    def clear(self):
        del self.session[settings.CART_SESSION_ID]
        self.session.modified = True

    # სესიასი კალათის ინფორმაციის შენახვა
    def save(self):
        self.session[settings.CART_SESSION_ID] = self.cart
        self.session.modified = True

    # კალათაში დამატებული პროდუქტის ჯამური ღირებულება
    def get_total_cost(self):
        for pk in self.cart.keys():
            self.cart[str(pk)]['product'] = Product.objects.get(pk=pk)

        return sum(item['quantity'] * item['product'].price for item in self.cart.values())
