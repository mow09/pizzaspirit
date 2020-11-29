from django.urls import include, path, re_path
from rest_framework import routers
from api import views


app_name = 'api'

router = routers.DefaultRouter()
router.register(r'customer', views.UserViewSet)
router.register(r'pizza', views.PizzaViewSet, basename='pizza')
router.register(r'pizzaorder', views.PizzaOrderViewSet, basename='pizzaorder')
router.register(r'order', views.OrderViewSet, basename='order')


urlpatterns = [
    path('', include(router.urls)),
    # path('api-auth/', include('rest_framework.urls', namespace='rest_framework'))
]
