from django.urls import include, path
from rest_framework import routers
from api import views

app_name = 'api'

router = routers.DefaultRouter()
# router.register(r'customer', views.CustomerViewSet)
router.register(r'pizza', views.PizzaViewSet, basename='pizza')
router.register(r'pizzaorder', views.PizzaOrderViewSet, basename='pizzaorder')
router.register(r'order', views.OrderViewSet, basename='order')

# Wire up our API using automatic URL routing.
# Additionally, we include login URLs for the browsable API.
urlpatterns = [
    path('', include(router.urls)),
    # path('api-auth/', include('rest_framework.urls', namespace='rest_framework'))
]
