#!/bin/bash

# Função para baixar arquivos do Google Drive
download_from_gdrive() {
    local FILE_ID=$1
    local FILE_NAME=$2
    curl -L -o $FILE_NAME "https://drive.google.com/uc?export=download&id=$FILE_ID"
}

# IDs dos arquivos no Google Drive
FILE_ID1="1zsJrEOZo1qjtTS_0CvHIc6E_MLwnsMof"
FILE_ID2="1-3vaV_hJJ1m7NIb_pG3AWaaSGLovWDfA"

# Nomes dos arquivos
FILE_NAME1="ubiquity_part1.zip"
FILE_NAME2="ubiquity_part2.zip"

# Baixar os arquivos
download_from_gdrive $FILE_ID1 $FILE_NAME1
download_from_gdrive $FILE_ID2 $FILE_NAME2

# Descompactar os arquivos
unzip $FILE_NAME1 -d ubiquity
unzip $FILE_NAME2 -d ubiquity

# Entrar no diretório ubiquity
cd ubiquity

# Supor que há um script de instalação dentro do diretório descompactado
# Verificar se o script de instalação existe e é executável
if [ -f "install.sh" ] && [ -x "install.sh" ]; then
    ./install.sh
else
    echo "O script de instalação não foi encontrado ou não é executável."
fi
apt install ubiquity-edxOs-plus
apt install ubiquity-slide-show-edxOs-plus
    
