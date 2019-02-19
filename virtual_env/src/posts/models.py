from django.db.models import Model
from django.db.models import CharField
from django.db.models import DateTimeField
from django.db.models import TextField


class Post(Model):
    id_ = ''



'''
CREATE TABLE tb_post(
    id_ serial primary key,
    titulo varchar(150),
    corpo text,
    criado timestamp with time zone default now(),
    atualizado timestamp with time zone default now()
    );
'''        
