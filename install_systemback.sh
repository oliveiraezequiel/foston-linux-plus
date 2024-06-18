#!/bin/bash

# Baixa o arquivo do GitHub
wget https://github.com/oliveiraezequiel/foston-linux-plus/raw/main/Systemback_Install_Pack_v1.8.402.tar.xz

# Descompacta o arquivo
tar -xf Systemback_Install_Pack_v1.8.402.tar.xz

# Acessa o diretório do pacote descompactado
cd Systemback_Install_Pack_v1.8.402

# Instala o Systemback
 ./install.sh -y
echo "a equipe foston linux plus e edxlinux agradecem"
