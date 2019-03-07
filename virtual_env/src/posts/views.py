from django.http import HttpResponse
from django.shortcuts import get_object_or_404
from django.shortcuts import render

from posts.actions.post_crud import detail as post_detail
from posts.actions.post_crud import show_all as post_show


def post_create(request):
    return HttpResponse('<h1>Create</h1>')


def post_detail(request, pk=None):
    return render(request, 'posts/detail.html', post_detail(request, pk))


def post_show(request):
    return render(request, 'posts/index.html', post_show_all(request))


def post_update(request, pk=None):
    return HttpResponse('<h1>Update</h1>')


def post_delete(request):
    return HttpResponse('<h1>Delete</h1>')
