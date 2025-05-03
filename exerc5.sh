#!/bin/bash

DIRETORIO="$1"

if [ ! -d "$DIRETORIO" ]; then
    echo "O argumento '$DIRETORIO' não é um diretório!"
else
    QUANTIDADE=$(find "$DIRETORIO" -type f | wc -l)
    echo "O diretório '$DIRETORIO' tem $QUANTIDADE arquivos."
fi
