#!/bin/bash

read -p "Digite o caminho de um arquivo ou diretório: " entrada

if [ -f "$entrada" ]; then
  echo "É um arquivo comum."
elif [ -d "$entrada" ]; then
  echo "É um diretório."
else
  echo "É outro tipo de arquivo ou não existe."
fi

# Listagem detalhada
ls -l "$entrada"
