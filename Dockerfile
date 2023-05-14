# Use the official MySQL 8.0 image as the base image
FROM mysql:8.0

# Set the root user's password
ENV MYSQL_ROOT_PASSWORD Rabiu2004@

# Copy a custom SQL script to initialize the database
COPY init.sql /docker-entrypoint-initdb.d/

# Expose port 3306
EXPOSE 80 443 3306

# Allow remote connections to the database
RUN echo "bind-address=0.0.0.0" >> /etc/mysql/conf.d/docker.cnf

# Start the MySQL service when the container starts
CMD ["mysqld"]

