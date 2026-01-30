#!/bin/bash
set -oue pipefail

# Aqui você adiciona pacotes do Fedora que o Bazzite não traz por padrão
# Exemplo: Instalando o editor de texto e ferramentas de rede
dnf install -y nano wget curl

# Se quiser adicionar algum repositório extra ou comando de performance, coloque aqui
echo "Otimizações do Velyx aplicadas com sucesso!"
