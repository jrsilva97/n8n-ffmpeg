# Usamos la imagen oficial
FROM n8nio/n8n:latest

# Cambiamos a root para tener permisos
USER root

# Instalamos ffmpeg usando comandos de Debian/Ubuntu
RUN apt-get update && apt-get install -y ffmpeg

# Volvemos al usuario normal de n8n
USER node
