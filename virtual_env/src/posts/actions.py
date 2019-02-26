# Lógica de negócio aqui!!!

from posts.models import Post


def get_post_list(request):
    if request.user.is_authenticated():
        queryset = Post.objects.all()
        context = {'titulo': 'LIST - Usuário autenticado', 'lista': queryset}
    else:
        context = {'titulo': 'LIST'}

    return context
