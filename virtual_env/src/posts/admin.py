from django.contrib.admin import site
from django.contrib.admin import ModelAdmin
from posts.models import Post
from posts.models import Foo

# Register your models here.

class PostModelAdmin(ModelAdmin):
    # Esta classe ModelAdmin serve para utilizarmos as opções de controle de
    # exibição

    # Caso queira excluir campos do model admin
    exclude = ('criado', 'atualizado')

    # O que exibir na listagem
    list_display = ('__str__', 'criado')

    #
    list_filter = ('tags',)

    class Meta:
        model = Post


site.register(Post, PostModelAdmin)
site.register(Foo)
