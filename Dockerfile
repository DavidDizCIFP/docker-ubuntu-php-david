# Usa una imagen base de PHP
FROM php:7.4-cli

# Copia la aplicación PHP desde el directorio del host al contenedor
COPY ./mi_aplicacion_php /var/www/html/

# Expone el puerto 80 para que puedas acceder al servicio (en caso de que agregues un servidor web)
EXPOSE 80

# Comando por defecto para ejecutar la aplicación PHP
CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html"]
