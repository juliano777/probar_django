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



# Abra outro terminal e inicialize o Django como serviço (dentro da pasta de projeto):

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



# 




