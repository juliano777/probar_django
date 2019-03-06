from django.conf.urls import url

from posts.views import post_create
from posts.views import post_detail
from posts.views import post_list
from posts.views import post_update
from posts.views import post_delete


urlpatterns = (
               url(r'^list/$|^$', post_list),
               url(r'^create/$', post_create),
               url(r'^detail/(?P<pk>\d+)$', post_detail),
               url(r'^update/$', post_update),
               url(r'^delete/$', post_delete),
              )
