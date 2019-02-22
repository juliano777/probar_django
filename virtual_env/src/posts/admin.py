from django.contrib.admin import site
from django.contrib.admin import ModelAdmin
from posts.models import Post

# Register your models here.

class PostModelAdmin(ModelAdmin):
    # Caso queira excluir campos do model admin
    # exclude = ('criado', 'atualizado')

    class Meta:
        model = Post


site.register(Post, PostModelAdmin)
