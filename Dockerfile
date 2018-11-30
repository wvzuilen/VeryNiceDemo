# use a node base image
FROM wvzuilen/pharo-seaside

# Set meta data
MAINTAINER Wouter van Zuilen (wvzuilen@gmail.com)
LABEL description="Docker image with a VeryNiceDemo !"

# Copy and install Smalltalk code
COPY /resources/preload.st /pharo
COPY /resources/postload.st /pharo
WORKDIR /pharo
RUN ./pharo Pharo.image st preload.st --save --quit
RUN ./pharo Pharo.image st postload.st --save --quit

# Install and config NGINX
RUN apt install nginx --yes
COPY ./resources/nginx.conf /etc/nginx

# Copy static files used by the Very Nice Demo
COPY /static /pharo/static

# Copy container start script
COPY /resources/start.sh /pharo
RUN chmod +x /pharo/start.sh
CMD ["/pharo/start.sh"]

# Expose port 8081
EXPOSE 8081
