from django.db.models import AutoField
from django.db.models import CharField
from django.db.models import DateTimeField
from django.db.models import IntegerField
from django.db.models import Model
from django.db.models import TextField

from django.contrib.postgres.fields import ArrayField as PgArrayField


class Post(Model):
    _id = AutoField(db_column='_id', name='_id', primary_key=True,)
    titulo = CharField(db_column='titulo', name='titulo', null=True,
                       max_length=150)
    tags = PgArrayField(CharField(max_length=15), null=True, blank=True)
    corpo = TextField(db_column='corpo', name='corpo', null=True,)
    criado = DateTimeField(db_column='criado', name='criado', null=False,
                           auto_now_add=True)
    atualizado = DateTimeField(db_column='atualizado', name='atualizado',
                               null=False, auto_now_add=True)

    def __str__(self):
        return '{} - {}'.format(self._id, self.titulo)

    class Meta:
        db_table = 'tb_post'
        verbose_name_plural = 'Post'  # Tirar o 's' do plural na exibição

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
        verbose_name_plural = 'Foo'
