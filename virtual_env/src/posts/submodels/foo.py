from django.db.models import AutoField
from django.db.models import Model
from django.db.models import TextField


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
