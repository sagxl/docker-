#!/bin/bash

meu_host=$(hostname)
echo "O nome do host é: $meu_host"





#exerc2 

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




#exerc3

  GNU nano 7.2                                   exerc3.sh                                            #!/bin/bash

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


#exerc4 

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
