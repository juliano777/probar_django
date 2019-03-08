from django.http import HttpResponse
from django.shortcuts import get_object_or_404
from django.shortcuts import render

from posts.actions.post_crud import detail as crud_detail
from posts.actions.post_crud import show as crud_show


def view_create(request):
    return HttpResponse('<h1>Create</h1>')


def view_detail(request, pk=None):
    return render(request, 'posts/detail.html', crud_detail(request, pk))


def view_show(request):
    return render(request, 'posts/index.html', crud_show(request))


def view_update(request, pk=None):
    return render(request, 'posts/update.html', crud_update(request, pk))


def view_delete(request):
    return render(request, 'posts/delete.html', crud_delete(request, pk))
