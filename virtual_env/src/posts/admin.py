from django.contrib.admin import site
from django.contrib.admin import ModelAdmin




from posts.models import Post
from posts.models import Foo

# Register your models here.

class PostArrayListFilter(admin.SimpleListFilter):
    """This is a list filter based on the values
    from a model's `keywords` ArrayField. """

    title = 'Tags'
    parameter_name = 'tags'

    def lookups(self, request, model_admin):
        # Very similar to our code above, but this method must return a
        # list of tuples: (lookup_value, human-readable value). These
        # appear in the admin's right sidebar

        tags = Post.objects.values_list('tags', flat=True)
        tags = [(t,t) for sublist in tags for t in sublist if t]
        tags = sorted(set(tags))
        return keywords

    def queryset(self, request, queryset):
        # when a user clicks on a filter, this method gets called. The
        # provided queryset with be a queryset of Items, so we need to
        # filter that based on the clicked keyword.

        lookup_value = self.value()  # The clicked keyword. It can be None!
        if lookup_value:
            # the __contains lookup expects a list, so...
            queryset = queryset.filter(keywords__contains=[lookup_value])
        return queryset

class PostModelAdmin(ModelAdmin):
    # Esta classe ModelAdmin serve para utilizarmos as opções de controle de
    # exibição

    # Caso queira excluir campos do model admin
    exclude = ('criado', 'atualizado')

    # O que exibir na listagem
    list_display = ('__str__', 'criado')

    # Filtro do campo tags
    list_filter = ('tags',)

    class Meta:
        model = Post


site.register(Post, PostModelAdmin)
site.register(Foo)
