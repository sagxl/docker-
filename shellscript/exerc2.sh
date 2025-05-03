#!/bin/bash

caminho="/docker-/shellscript/exerc2.sh"

if [ -e "$caminho" ]; then
  echo "O caminho existe."

  if [ -w "$caminho" ]; then
    echo "Você TEM permissão para editar o arquivo."
  else
    echo "Você NÃO tem permissão para editar o arquivo."
  fi
else
  echo "O caminho NÃO existe."
fi
