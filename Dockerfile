# use a node base image
FROM wvzuilen/pharo-seaside

# set maintainer
MAINTAINER Wouter van Zuilen (wvzuilen@gmail.com)
LABEL description="Docker image with a VeryNiceDemo !"

COPY /scripts/preload.st /pharo
COPY /scripts/postload.st /pharo

WORKDIR /pharo
RUN ./pharo Pharo.image st preload.st --save --quit
RUN ./pharo Pharo.image st postload.st --save --quit

# Installing NGINX
RUN apt install nginx --yes
COPY ./nginx.conf /etc/nginx


COPY /static /pharo/static
COPY start.sh /pharo
RUN chmod +x /pharo/start.sh

CMD ["/pharo/start.sh"]

# tell docker what port to expose
EXPOSE 8081
