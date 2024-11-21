# Usamos la imagen oficial de PostgreSQL
FROM postgres:14

# Establece las variables de entorno necesarias para PostgreSQL
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=sso_rcn_1234
ENV POSTGRES_DB=loyalty_rcn

# Copiamos el archivo init.sql al directorio de inicialización de PostgreSQL
# /docker-entrypoint-initdb.d es el directorio que PostgreSQL revisa al inicio para ejecutar scripts
COPY ./init.sql /docker-entrypoint-initdb.d/

# Exponer el puerto 5432 (el puerto predeterminado de PostgreSQL)
EXPOSE 5432
