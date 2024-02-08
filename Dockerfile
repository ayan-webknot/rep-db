# Use the official MariaDB image as the base image
FROM mariadb:latest
# Set environment variables for MariaDB
ENV MYSQL_ROOT_PASSWORD=admin
ENV MYSQL_DATABASE=_5e5899d8398b5f7b
ENV MYSQL_USER=admin
ENV MYSQL_PASSWORD=admin
# Copy the SQL dump file into the Docker image
COPY init.sql /docker-entrypoint-initdb.d/
# Expose port 3306 to allow external connections
EXPOSE 3306
