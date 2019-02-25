from django.db.models import Model
from django.db.models import CharField

from django.contrib.postgres.fields import ArrayField as PgArrayField

from django.contrib.admin import SimpleListFilter

class Item(Model):
    title = CharField(max_length=128)
    keywords = PgArrayField(CharField(max_length=32, blank=True), default=list,
                            blank=True, )

# ===========================================================================

from django.contrib import admin

class ItemAdmin(admin.ModelAdmin):
    list_display = ('title', )
    list_filter = ('keywords', )

admin.site.register(models.Item, ItemAdmin)

class ArrayFieldListFilter(admin.SimpleListFilter):
    '''
    Filtragem de lista baseada nos valores do model Post, campo "tags"
    '''

    title = 'Keywords'
    parameter_name = 'keywords'

    def lookups(self, request, model_admin):
        # Very similar to our code above, but this method must return a
        # list of tuples: (lookup_value, human-readable value). These
        # appear in the admin's right sidebar

        keywords = Item.objects.values_list("keywords", flat=True)
        keywords = [(kw, kw) for sublist in keywords for kw in sublist if kw]
        keywords = sorted(set(keywords))
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

class ItemAdmin(admin.ModelAdmin):
    list_display = ('title', )
    list_filter = (ArrayFieldListFilter, )

admin.site.register(models.Item, ItemAdmin)
