#!/bin/bash

# URL do arquivo
URL="https://github.com/oliveiraezequiel/foston-linux-plus/raw/main/icewm.md.tar.xz"

# Diretório de destino
DEST_DIR="$HOME/foston-linux-plus"

# Criar diretório de destino
mkdir -p "$DEST_DIR"

# Baixar o arquivo
wget -O "$DEST_DIR/icewm.md.tar.xz" "$URL"

# Ir para o diretório de destino
cd "$DEST_DIR"

# Extrair o arquivo
tar -xvf icewm.md.tar.xz

# Mostrar conteúdo extraído
ls -l
echo "a equipe foston linux plus e edxlinux agradecem"
