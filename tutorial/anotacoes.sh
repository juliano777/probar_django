# Criação de um projeto

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
  |- manage.py (6)

1) Pasta do projeto
2) Pasta
3) Dunter init
4) Arquivo principal de configurações
5) Arquivo de direcionamento de URLs
6) WSGI
"

# Iniciando o Django como serviço:

python manage.py runserver 0.0.0.0:8000



