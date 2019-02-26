from django.conf.urls import include
from django.conf.urls import url
from django.contrib import admin

#from posts import views

urlpatterns = (
               url(r'^admin/', admin.site.urls),
               url(r'^posts/', include('posts.urls'))
              )
