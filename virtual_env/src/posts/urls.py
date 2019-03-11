from django.conf.urls import url

from posts.views import view_create
from posts.views import view_delete
from posts.views import view_detail
from posts.views import view_show
from posts.views import view_update



urlpatterns = (
               # List
               url(r'^list/$|^$', view_show, name='show'),
               # Create
               url(r'^create/$', view_create, name='create'),
               # Detail
               url(r'^(?P<pk>\d+)/$', view_detail, name='detail'),
               # Update
               url(r'^(?P<pk>\d+)/delete/$', view_delete, name='delete'),
               # Delete
               url(r'^delete/$', view_delete, name='delete'),
              )
