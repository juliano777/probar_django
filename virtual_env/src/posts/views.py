from django.http import HttpResponse
from django.shortcuts import get_object_or_404
from django.shortcuts import render

from posts.actions.post_crud import detail as post_detail
from posts.actions.post_crud import list as post_list


def post_create(request):
    return HttpResponse('<h1>Create</h1>')


def post_detail(request, pk=None):
    return render(request, 'posts/detail.html', post_detail(request, pk))


def post_list(request):
    return render(request, 'posts/index.html', post_list(request))


def post_update(request, pk=None):
    return HttpResponse('<h1>Update</h1>')


def post_delete(request):
    return HttpResponse('<h1>Delete</h1>')
