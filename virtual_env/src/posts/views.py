from django.http import HttpResponse
from django.shortcuts import get_object_or_404
from django.shortcuts import render

from posts.actions import get_post_list


def post_create(request):
    return HttpResponse('<h1>Create</h1>')


def post_detail(request):
    context = {'titulo': 'DETAIL'}
    return render(request, 'index.html', context)


def post_list(request):
    return render(request, 'index.html', get_post_list(request))


def post_update(request):
    return HttpResponse('<h1>Update</h1>')


def post_delete(request):
    return HttpResponse('<h1>Delete</h1>')
