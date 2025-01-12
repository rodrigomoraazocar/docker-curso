# Usamos una imagen base de Debian, una distribución de Linux ligera y popular
FROM debian

# Especificamos al mantenedor de la imagen, incluyendo su correo electrónico
# Agregar metadatos usando LABEL
LABEL maintainer="rodrigo.mora.azocar@gmail.com"
LABEL description="Este contenedor instala y configura Nginx basado en Debian"
LABEL version="1.0"

# Actualizamos la lista de paquetes e instalamos Nginx
# "apt-get update" se asegura de que el índice de paquetes esté actualizado
# "apt-get install -y nginx" instala Nginx y el "-y" evita que se pida confirmación
RUN apt-get update && apt-get install -y nginx

# Establecemos el ENTRYPOINT, que define el comando que se ejecutará
# cuando se inicie un contenedor a partir de esta imagen
# En este caso, inicia Nginx en modo "foreground" (no como demonio)
ENTRYPOINT ["nginx", "-g", "daemon off;"]
