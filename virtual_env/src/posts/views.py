from django.http import HttpResponse
from djano.shortcuts import render

def post_home(request):
    return HttpResponse('<h1>Hello, World!!</h1>')
