#!/bin/bash

# Definindo a URL do pacote
URL="https://github.com/oliveiraezequiel/foston-linux-plus/raw/main/zsnes_1.510%2Bbz2-8build2_i386.deb"

# Baixando o pacote
wget $URL -O /tmp/zsnes_1.510+bz2-8build2_i386.deb

# Instalando o pacote
 dpkg -i /tmp/zsnes_1.510+bz2-8build2_i386.deb

# Corrigindo dependências, se necessário
 apt-get install -f

# Removendo o pacote baixado
rm /tmp/zsnes_1.510+bz2-8build2_i386.deb

echo "Instalação concluída!"
echo "a equipe foston linux plus e edxlinux agradecem"
