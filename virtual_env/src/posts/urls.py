from django.conf.urls import url

from posts.views import post_create
from posts.views import post_delete
from posts.views import post_detail
from posts.views import post_list
from posts.views import post_update



urlpatterns = (
               # List
               url(r'^list/$|^$', post_list),
               # Create
               url(r'^create/$', post_create),
               # Detail
               url(r'^detail/(?P<pk>\d+)/$', post_detail),
               url(r'^(?P<pk>\d+)/$', post_detail),
               # Update
               url(r'^update/$', post_update),
               # Delete
               url(r'^delete/$', post_delete),
              )
