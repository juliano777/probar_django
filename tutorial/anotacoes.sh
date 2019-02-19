# Criação do ambiente virtual:

python3.7 -m venv virtual_env



# Entrar no diretório de ambiente virtual:

cd virtual_env



# Habilitar o ambiente virtual:

source bin/activate



# Baixar os pacote necessários para o curso:

pip install psycopg2 psycopg2-binary django



# Criação de um projeto:

django-admin startproject projeto



# Entrando na pasta do projeto:

cd projeto



# Abra outro terminal, repita o comando ativação de ambiente e inicialize o
Django como serviço (dentro da pasta de projeto):

python manage.py runserver 0.0.0.0:8000



# Verificação da hierarquia de diretório após a inicialização do serviço:

tree projeto



# Estrutura de Pastas:

"

projeto/ (1)
├── projeto/ (2)
│   ├── __init__.py (3)
│   ├── __pycache__/ (4)
│   │   ├── __init__.cpython-37.pyc 
│   │   ├── settings.cpython-37.pyc
│   │   ├── urls.cpython-37.pyc
│   │   └── wsgi.cpython-37.pyc
│   ├── settings.py (5)
│   ├── urls.py (6)
│   └── wsgi.py (7)
├── db.sqlite3 (8)
└── manage.py (9)

1) Pasta do projeto
2) Pasta
3) Dunter init
4) Pasta de cache
5) Arquivo principal de configurações
6) Arquivo de direcionamento de URLs
7) WSGI
8) Arquivo de dados do SQLite 3
9) manage.py
"



# Aborte o serviço com as teclas <Ctrl> + <C>

# Volte uma pasta

cd ..



# Apague a pasta projeto:

rm -fr projeto



# Crie um novo projeto chamado "blog":

django-admin startproject blog



# Renomeie a pasta de projeto para "src":

mv blog src



# Verificando a hierarquia de diretórios antes de rodar o Django como serviço:

tree src/

"
src/
├── blog
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
└── manage.py
"



# Terminal 2
# Entrar no diretório do projeto e executar o servidor de desenvolvimento:

cd src

python manage.py runserver 0.0.0.0:8000



# Entrar no diretório src e editar o arquivo de configuração:

cd src

vim blog/settings.py

"
DATABASES = {
             'default': {
                         'ENGINE': 'django.db.backends.postgresql',
                         'NAME': 'db_probar_django',
                         'USER': 'user_django',
                         'PASSWORD': '123',
                         'HOST': '127.0.0.1',
                         'PORT': '5432',
                         }
            }

"



# Execução das migrações:

python manage.py migrate



# Criação de super usuário:

python manage.py createsuperuser

"
Username (leave blank to use 'foo'): admin
Email address: admin@localhost
Password (again): 
Superuser created successfully.
"



# 












