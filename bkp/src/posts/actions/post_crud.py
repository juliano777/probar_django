from django.shortcuts import get_object_or_404
from django.shortcuts import HttpResponseRedirect

from posts.models import Post
from posts.forms import PostForm


def form_is_valid(form):
    if form.is_valid():
        instance = form.save(commit=False)
        instance.save()
        # HttpResponseRedirect(instance.get_absolute_url()))


def show(request):
    if request.user.is_authenticated():
        queryset = Post.objects.all()
        return {'titulo': 'Listagem de Posts', 'lista': queryset}
    else:
        return {'titulo': 'É preciso se autenticar!!!'}


def detail(request, pk=None):

    if request.user.is_authenticated():
        instance = get_object_or_404(Post, pk=pk)

        return {
            'titulo': 'Detail - Usuário autenticado',
            'instance': instance,
        }
    else:
        return {'titulo': 'No access!!!'}


def create(request):
    form = PostForm(request.POST or None)
    form_is_valid(form)
    return {'form': form, }


def update(request, pk=None):
    instance = get_object_or_404(Post, pk=pk)
    form = PostForm(request.POST or None, instance=instance)
    form_is_valid(form)
    return {'form': form, 'instance': instance, 'form': form}
