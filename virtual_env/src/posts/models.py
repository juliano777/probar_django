from django.db.models import AutoField
from django.db.models import CharField
from django.db.models import DateTimeField
from django.db.models import IntegerField
from django.db.models import Model
from django.db.models import TextField


class Post(Model):
    _id = AutoField(db_column='_id', name='_id', primary_key=True,)
    titulo = CharField(db_column='titulo', name='titulo', max_length=150,)
    titulo = TextField(db_column='titulo', name='titulo',)
    criado = DateTimeField(db_column='criado', name='criado',)
    atualizado = DateTimeField(db_column='atualizado', name='atualizado',)

    def __str__(self):
        return self.titulo

    class Meta:
        db_table = 'tb_post'


class Foo(Model):
    '''
    Modelo de tabela para múltiplos schemas no PostgreSQL
    '''

    _id = AutoField(db_column='_id', name='_id', primary_key=True,)
    campo = TextField(db_column='campo', name='campo',)

    def __str__(self):
        return self.campo

    class Meta:
        db_table = 'sc_foo"."tb_foo'
