from django.contrib import admin
from django.urls import path
from django.contrib.auth import views as auth_views
from django.urls.conf import include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('core.urls')),
    path('restaurant/sign_in/', auth_views.LoginView.as_view(template_name='restaurant/sign_in.html'),                  name='restaurant_sign_in'),
    path('restaurant/sign_out/', auth_views.LogoutView.as_view(next_page='/'), name='restaurant_sign_out'),
]
