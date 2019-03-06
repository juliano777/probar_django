from django.shortcuts import get_object_or_404

from posts.models import Post


def get_post_list(request):
    if request.user.is_authenticated():
        queryset = Post.objects.all()
        context = {'titulo': 'LIST - Usuário autenticado', 'lista': queryset}
    else:
        context = {'titulo': 'LIST'}

    return context

def get_post_detail(request):
    if request.user.is_authenticated():
        instance = get_object_or_404(Post, pk=11)
        context = {
                   'titulo': 'Detail - Usuário autenticado',
                   'instance': instance,
                   }
    else:
        context = {'titulo': 'No access!!!'}

    return context
