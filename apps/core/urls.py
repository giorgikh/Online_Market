from django.urls import path
from . import views


urlpatterns = [
    path('', views.front_page, name='front_page'),
    path('contact/', views.contact_page, name='contact_page'),
    path('', views.change_language, name='change_language'),
]
