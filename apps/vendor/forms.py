from django.forms import ModelForm
from django.utils.translation import ugettext as _

from ..product.models import Product

class ProductForm(ModelForm):
    class Meta:
        model = Product
        fields = [_('category'), _('image'), _('title'), _('description'), _('price')]















