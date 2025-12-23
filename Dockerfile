# 1. FORZAMOS la versión Debian (esta sí tiene apt-get)
FROM n8nio/n8n:latest-debian

# 2. Permisos de administrador
USER root

# 3. Instalamos FFmpeg (ahora sí funcionará)
RUN apt-get update && apt-get install -y ffmpeg

# 4. Volvemos al usuario seguro
USER node
