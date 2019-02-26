from django.http import HttpResponse
from django.shortcuts import render

from posts.models import Post

def post_create(request):
    return HttpResponse('<h1>Create</h1>')

def post_detail(request):
    context = {'titulo': 'DETAIL'}
    return render(request, 'index.html', context)

def post_list(request):
    if request.user.is_authenticated():
        queryset = Post.objects.all()
        context = {'titulo': 'LIST - Usuário autenticado', 'lista': queryset}
    else:
        context = {'titulo': 'LIST'}

    return render(request, 'index.html', context)

def post_update(request):
    return HttpResponse('<h1>Update</h1>')

def post_delete(request):
    return HttpResponse('<h1>Delete</h1>')
