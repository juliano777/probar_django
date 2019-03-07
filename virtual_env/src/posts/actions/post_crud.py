from django.shortcuts import get_object_or_404

from posts.models import Post


def show(request):
    if request.user.is_authenticated():
        queryset = Post.objects.all()
        context = {'titulo': 'LIST - Usuário autenticado', 'lista': queryset}
    else:
        context = {'titulo': 'LIST'}

     return context


def detail(request, pk=None):

    if request.user.is_authenticated():
        instance = get_object_or_404(Post, pk=pk)
        context = {
                   'titulo': 'Detail - Usuário autenticado',
                   'instance': instance,
                   }
    else:
        context = {'titulo': 'No access!!!'}

    return context

def update(request, pk=None):
    context = {}
    return context
