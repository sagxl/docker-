#!/bin/bash

entrada="$1"  # Pega o primeiro argumento

if [ -z "$entrada" ]; then
  echo "Uso: $0 caminho/para/arquivo_ou_diretorio"
  exit 1
fi

if [ -f "$entrada" ]; then
  echo "É um arquivo comum."
elif [ -d "$entrada" ]; then
  echo "É um diretório."
else
  echo "É outro tipo de arquivo ou não existe."
fi

# Listagem detalhada
ls -l "$entrada"
