# probar_django

Curso de Django 1.10.

## Como contribuir?

* Clone este repositório;
* Crie um virtualenv com Python 3;
* Ative o virtualenv;
* Instale as dependências;
* ~Rode as migrações~;
* Deixe de ser preguiçoso e crie sua modelagem de banco na mão rodando o script SQL ;) ;


## Preparação do Ambiente

```
sudo apt -y install python3-venv

sudo apt clean

git clone https://github.com/juliano777/probar_django.git
cd probar_django

python3 -m venv .venv

. ./venv_active.sh

django-admin startproject probar_django

mv probar_django src

docker container run -itd --name db_probar_django --hostname db-probar-django.local -p 5432:5432 juliano777/postgres

docker container ls | fgrep 'probar_django'
5092c2516f13        juliano777/postgres   "docker-entrypoint.s…"   33 seconds ago      Up 33 seconds       0.0.0.0:5432->5432/tcp   db_probar_django

read -sp 'Digite a senha do usuário: ' PWD_DB_USER_DJANGO

docker container exec -it db_probar_django psql -c \
"CREATE ROLE user_django LOGIN ENCRYPTED PASSWORD '${PWD_DB_USER_DJANGO}'"

docker container exec -it db_probar_django psql -c \
'CREATE DATABASE db_probar_django OWNER user_django'

cat << EOF > src/probar_django/db.conf
DB_HOST = 'localhost'
DB_NAME = 'db_probar_django'
DB_USER = 'user_django'
DB_PASSWORD = '${PWD_DB_USER_DJANGO}'
DB_PORT = 5432
EOF
```

### settings.py

Edite o arquivo de configuração principal do projeto:

```bash
vim src/probar_django/settings.py
```

Adicione o import:
```python
from configobj import ConfigObj
```

Substitua toda a parte referente a banco de dados (Database) pelo seguinte
conteúdo:

```python
# Database
# https://docs.djangoproject.com/en/2.2/ref/settings/#databases

# Database configuration file location
DB_CONF_FILE = f'{BASE_DIR}/probar_django/db.conf'

# Read the configurations from file
DB_CONFIG = ConfigObj(DB_CONF_FILE)

# Database connection parameters

DB_HOST = DB_CONFIG['DB_HOST']
DB_NAME = DB_CONFIG['DB_NAME']
DB_USER = DB_CONFIG['DB_USER']
DB_PASSWORD = DB_CONFIG['DB_PASSWORD']
DB_PORT = DB_CONFIG['DB_PORT']

DATABASES = {
             'default': {
                         'ENGINE': 'django.db.backends.postgresql',
                         'NAME': DB_NAME,
                         'USER': DB_USER,
                         'PASSWORD': DB_PASSWORD,
                         'HOST': DB_HOST,
                         'PORT': DB_PORT,
                         }
            }
```



cd src
~python manage.py migrate~
python manage.py runserver

```
