#!/bin/bash

# Baixa o arquivo .deb
wget https://github.com/oliveiraezequiel/foston-linux-plus/raw/main/recycli-0.1-2.deb -O recycli-0.1-2.deb

# Instala o pacote .deb
 dpkg -i recycli-0.1-2.deb

# Corrige dependências quebradas, se houver
 apt-get install -f

# Limpa o arquivo .deb baixado
rm recycli-0.1-2.deb

echo "Instalação completa!"
echo "a equipe foston linux plus e edxlinux agradecem"
