#!/bin/bash

# Verifica se o script é executado como superusuário para permitir a movimentação do arquivo para /usr/local/bin
if [ "$(id -u)" != "0" ]; then
    echo "Este script deve ser executado como superusuário" 1>&2
    exit 1
fi

# Move o script para /usr/local/bin e ajusta as permissões
mv fastmap /usr/local/bin/fastmap
chmod +x /usr/local/bin/fastmap

echo "fastmap instalado com sucesso e está pronto para ser usado."
