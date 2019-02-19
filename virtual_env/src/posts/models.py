from django.db.models import Model
from django.db.models import CharField
from django.db.models import DateTimeField
from django.db.models import IntegerField
from django.db.models import TextField


class Post(Model):
    id_ = IntegerField()
    titulo = CharField()
    corpo = TextField()
    criado = DateTimeField()
    atualizado = DateTimeField()

    def __str__(self):
        return self.titulo

     class Meta:
        db_table = 'tb_post'
