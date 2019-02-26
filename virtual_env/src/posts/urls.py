from django.conf.urls import url

from posts.views import post_home

urlpatterns = (
               url(r'^create/$', post_create),
               url(r'^detail/$', post_detail),
               url(r'^list/$', post_list),
               url(r'^update/$', post_update),
               url(r'^delete/$', post_delte),
              )
