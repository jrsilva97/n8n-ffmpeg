# Usamos la imagen que ya tienes actualmente
FROM n8nio/n8n:latest

# Cambiamos a root para poder instalar cosas
USER root

# Instalamos ffmpeg usando el gestor de paquetes de Alpine (apk)
RUN apk update && apk add --no-cache ffmpeg

# Volvemos al usuario normal de n8n por seguridad
USER node