from django.db.models import Model
from django.db.models import CharField
from django.db.models import DateTimeField
from django.db.models import IntegerField
from django.db.models import TextField


class Post(Model):
    id_ = IntegerField(db_column='id', primary_key=True,)
    titulo = CharField(db_column='', max_length=150)
    corpo = TextField(db_column='', )
    criado = DateTimeField(db_column='', )
    atualizado = DateTimeField(db_column='', )

    def __str__(self):
        return self.titulo

     class Meta:
        db_table = 'tb_post'
