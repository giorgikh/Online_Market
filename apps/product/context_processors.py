from .models import Category


def menu_categories(request):
    categories = Category.objects.all()
    print(categories)
    return {"menu_categories": categories}
