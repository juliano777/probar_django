# Criação do ambiente virtual:

python -m venv probar_django



# Entrar no diretório de ambiente virtual:

cd probar_django



# Habilitar o ambiente virtual:

source bin activate



# Baixar os pacote necessários para o curso:

pip install psycopg2 psycopg2-binary django



# Criação de um projeto:

django-admin startproject projeto



# Entrar na pasta do projeto:

cd projeto



# Estrutura de Pastas:

"
projeto/ (1)
  |
  |- projeto/ (2)
       | 
       |- __init__.py (3)
       |- settings.py (4)
       |- urls.py (4)
       |- wsgi.py (5)
       |
  |- db.sqlite3 (6)
  |
  |- manage.py (7)

1) Pasta do projeto
2) Pasta
3) Dunter init
4) Arquivo principal de configurações
5) Arquivo de direcionamento de URLs
6) Arquivo de dados do SQLite 3
7) WSGI
"



# Iniciando o Django como serviço:

python manage.py runserver 0.0.0.0:8000


# 




