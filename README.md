# probar_django

Curso de Django 1.10.

## Como contribuir?

* Clone este repositório;
* Crie um virtualenv com Python 3;
* Ative o virtualenv;
* Instale as dependências;
* ~Rode as migrações~;
* Deixe de ser preguiçoso e crie sua modelagem de banco na mão rodando o script SQL ;) ;

```
git clone https://github.com/juliano777/probar_django.git
cd probar_django
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
cd src
~python manage.py migrate~
python manage.py runserver
```
