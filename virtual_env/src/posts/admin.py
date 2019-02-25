from django.contrib.admin import site
from django.contrib.admin import ModelAdmin
from posts.models import Post
from posts.models import Foo

# Register your models here.

class PostModelAdmin(ModelAdmin):
    # Esta classe ModelAdmin serve para utilizarmos as opções de controle de
    # exibição

    # Caso queira excluir campos do model admin
    # exclude = ('criado', 'atualizado')

    list_display = ('__str__')

    class Meta:
        model = Post


site.register(Post, PostModelAdmin)
site.register(Foo)
