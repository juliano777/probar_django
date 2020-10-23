#!/bin/bash

# Cria o ambiente virtual:
python3 -m venv .venv

# Habilita o ambiente virtual:
source .venv/bin/activate

# Atualiza o pip:
pip install -U pip

# Instala dependências:
pip install -r requirements.txt
