# Puxa a base do Bazzite com suporte para NVIDIA (mais comum para jogos)
FROM ghcr.io/ublue-os/bazzite-nvidia:stable

# Define a identidade do Velyx OS nos metadados da imagem
LABEL name="velyx-os"
LABEL description="Velyx OS - Gaming Powerhouse based on Bazzite"

# Copia toda a sua pasta de configurações para dentro do sistema
COPY config/ /etc/velyx/

# Dá permissão e executa o script de branding e o seu script de exemplo (build)
# Aqui usamos o seu example.sh como o script de instalação principal
RUN chmod +x /etc/velyx/scripts/branding.sh && \
    chmod +x /etc/velyx/scripts/example.sh && \
    /etc/velyx/scripts/branding.sh && \
    /etc/velyx/scripts/example.sh

# Define que o sistema está pronto
RUN echo "Velyx OS Build Complete!"
