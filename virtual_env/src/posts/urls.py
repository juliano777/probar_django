from django.conf.urls import url

from posts.views import view_create
from posts.views import view_delete
from posts.views import view_detail
from posts.views import view_show
from posts.views import view_update



urlpatterns = (
               # List
               url(r'^list/$|^$', view_show, name='url_show'),
               # Create
               url(r'^create/$', view_create, name='url_create'),
               # Detail
               url(r'^(?P<pk>\d+)/$', view_detail, name='url_detail'),
               # Update
               url(r'^update/$', view_update, name='url_update'),
               # Delete
               url(r'^delete/$', view_delete, name='url_delete'),
              )
