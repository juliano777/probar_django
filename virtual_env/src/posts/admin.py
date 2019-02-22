from django.contrib.admin.site import register as adm_reg
from django.contrib.admin import ModelAdmin
from posts.models import Post

# Register your models here.

class PostModelAdmin(ModelAdmin):
    class Meta:
        model = Post


adm_reg(Post, PostModelAdmin)
