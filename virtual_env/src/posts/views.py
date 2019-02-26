from django.http import HttpResponse
from django.shortcuts import render

def post_create(request):
    return HttpResponse('<h1>Create</h1>')

def post_detail(request):
    return HttpResponse('<h1>Detail</h1>')

def post_list(request):
    return render(request, 'index.html')



def post_update(request):
    return HttpResponse('<h1>Update</h1>')

def post_delete(request):
    return HttpResponse('<h1>Delete</h1>')
