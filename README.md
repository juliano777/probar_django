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

Instalação do pacote python3-venv e limpando o cache de pacotes em seguida:

```bash
sudo apt -y install python3-venv && sudo apt clean
```

Clonar o repositório git:

```bash
git clone https://github.com/juliano777/probar_django.git
```

Ir para o diretório do repositório:

```bash
cd probar_django
```

Verificando o conteúdo do script venv_active.sh:

```bash
cat venv_active.sh
```

    #!/bin/bash

    # Cria o ambiente virtual:
    python3 -m venv .venv

    # Habilita o ambiente virtual:
    source .venv/bin/activate

    # Atualiza o pip:
    pip install -U pip

    # Instala dependências:
    pip install -r requirements.txt

Utilizar o script para operações de preparo do ambiente:

```bash
. ./venv_active.sh
```

Criação do projeto Django:

```bash
django-admin startproject probar_django
```

Renomear o diretório que tem o nome do projeto para src:

```bash
mv probar_django src
```

Criação do contêiner de banco de dados PostgreSQL:

```bash
docker container run -itd \
    --name db_probar_django \
    --hostname db-probar-django.local \
    -p 5432:5432 \
    juliano777/postgres
```

Verificar o contêiner criado:

```bash
docker container ls | fgrep 'probar_django'
```

    5092c2516f13        juliano777/postgres   "docker-entrypoint.s…"   33 seconds ago      Up 33 seconds       0.0.0.0:5432->5432/tcp   db_probar_django


Criação de variável de ambiente para senha do usuário de banco do Django:

```bash
read -sp 'Digite a senha do usuário: ' PWD_DB_USER_DJANGO
```

Criar um role usuário no servidor de banco de dados:

```bash
docker container exec -it db_probar_django psql -c \
"CREATE ROLE user_django LOGIN ENCRYPTED PASSWORD '${PWD_DB_USER_DJANGO}'"
```

Criação da base de dados:

```bash
docker container exec -it db_probar_django psql -c \
'CREATE DATABASE db_probar_django OWNER user_django'
```


Criação do schema (namespace) para metadados do Django:

```bash
docker container exec -it db_probar_django \
psql -U user_django -d db_probar_django -c \
'CREATE SCHEMA ns_django;'
```


Via recurso de shell heredoc, criar o arquivo de configurações de banco de dados:

```bash
cat << EOF > src/probar_django/db.conf
DB_HOST = 'localhost'
DB_NAME = 'db_probar_django'
DB_USER = 'user_django'
DB_PASSWORD = '${PWD_DB_USER_DJANGO}'
DB_PORT = 5432
DB_OPTIONS = '-c search_path=ns_django,public'
EOF
```



Também via heredoc, gerar o arquivo .env que terá algumas variáveis que não
serão versionadas:

```bash
cat << EOF > src/probar_django/.env
SECRET_KEY = '`python3 secret_key_gen.py`'
DEBUG = True
ALLOWED_HOSTS = '.localhost', '127.0.0.1', '[::1]'
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

Logo após a declaração da variável `BASE_DIR` adicione as linhas: 

```python

# Database configuration file
DB_CONF_FILE = f'{BASE_DIR}/probar_django/db.conf'
DB_CONFIG = ConfigObj(DB_CONF_FILE)

# Environment variables file
ENV_FILE = f'{BASE_DIR}/probar_django/.env'
ENV_CONFIG = ConfigObj(ENV_FILE)
```

Substitua os valores de `SECRET_KEY`, `DEBUG` e `ALLOWED_HOSTS` conforme segue:

```python
SECRET_KEY = ENV_CONFIG['SECRET_KEY']
DEBUG = ENV_CONFIG['DEBUG']
ALLOWED_HOSTS = ENV_CONFIG['ALLOWED_HOSTS']
```


Substitua toda a parte referente a banco de dados (Database) pelo seguinte
conteúdo:

```python
# Database
# https://docs.djangoproject.com/en/2.2/ref/settings/#databases

# Database connection parameters

DB_HOST = DB_CONFIG['DB_HOST']
DB_NAME = DB_CONFIG['DB_NAME']
DB_USER = DB_CONFIG['DB_USER']
DB_PASSWORD = DB_CONFIG['DB_PASSWORD']
DB_PORT = DB_CONFIG['DB_PORT']
DB_OPTIONS = DB_CONFIG['DB_OPTIONS']

DATABASES = {
             'default': {
                         'ENGINE': 'django.db.backends.postgresql',
                         'NAME': DB_NAME,
                         'USER': DB_USER,
                         'PASSWORD': DB_PASSWORD,
                         'HOST': DB_HOST,
                         'PORT': DB_PORT,
                         'OPTIONS': {'options': DB_OPTIONS},
                         }
            }
```

```bash
cd src
```

```bash
python3 manage.py migrate
```


```bash
python3 manage.py runserver
```
