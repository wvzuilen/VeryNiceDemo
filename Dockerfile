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

# NGINX test
RUN apt install nginx --yes
RUN service nginx start
COPY ./nginx.conf /etc/nginx
RUN service nginx restart
RUN mkdir /pharo/static
COPY /static /pharo/static

CMD ["/pharo/pharo", "Pharo.image","--no-quit"]

# tell docker what port to expose
EXPOSE 8081
