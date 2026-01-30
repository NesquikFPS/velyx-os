# Puxa a base do Bazzite (escolha a versão Nvidia ou AMD)
FROM ghcr.io/ublue-os/bazzite-nvidia:stable

# Define o nome do seu OS
LABEL name="velyx-os"

# Copia os seus scripts e arquivos para dentro da imagem
COPY config/ /etc/velyx/config/

# Executa o script de branding (vamos criar ele já já)
RUN chmod +x /etc/velyx/config/scripts/branding.sh && \
    /etc/velyx/config/scripts/branding.sh
