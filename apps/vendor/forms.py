from django.forms import ModelForm
from django.utils.translation import ugettext as _

from ..product.models import Product, ProductImage

class ProductForm(ModelForm):
    class Meta:
        model = Product
        fields = [_('category'), 'image', _('title'), _('description'), _('price')]


class ProductImageForm(ModelForm):
    class Meta:
        model = ProductImage
        fields = ['image']












