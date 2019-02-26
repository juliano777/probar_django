from django.contrib.admin import site
from django.contrib.admin import ModelAdmin
from django.contrib.admin import SimpleListFilter

from posts.models import Post
from posts.models import Foo

# Register your models here.

class PostArrayListFilter(SimpleListFilter):
    '''
    Filtragem de lista baseada nos valores do model Post, campo "tags"
    '''

    title = 'Tags / Assuntos'
    parameter_name = 'tags'

    def lookups(self, request, model_admin):
        # Very similar to our code above, but this method must return a
        # list of tuples: (lookup_value, human-readable value). These
        # appear in the admin's right sidebar

        tags = Post.objects.values_list('tags', flat=True)
        tags = [(t, t) for sublist in tags for t in sublist if t]
        tags = sorted(set(tags))
        return tags

    def queryset(self, request, queryset):
        # when a user clicks on a filter, this method gets called. The
        # provided queryset with be a queryset of Items, so we need to
        # filter that based on the clicked keyword.

        lookup_value = self.value()  # The clicked keyword. It can be None!
        if lookup_value:
            # the __contains lookup expects a list, so...
            queryset = queryset.filter(tags__contains=[lookup_value])
        return queryset

class PostModelAdmin(ModelAdmin):
    # Esta classe ModelAdmin serve para utilizarmos as opções de controle de
    # exibição

    # Caso queira excluir campos do model admin
    exclude = ('criado', 'atualizado')

    # O que exibir na listagem
    list_display = ('__str__', 'criado', 'tags')

    # Link sobre o(s) campo(s) desejado(s)
    list_display_links = ('__str__', )

    # Campos editáveis na listagem
    list_editable = ('tags', )

    # Filtro do campo tags
    list_filter = (PostArrayListFilter, 'criado')

    # Campos de busca
    # Esse recurso pode ser muito melhor aproveitado no PostgreSQL se
    # for utilizado um campo tsvector (Full Text Search)
    search_fields = ('titulo', )

    class Meta:
        model = Post


site.register(Post, PostModelAdmin)
site.register(Foo)
