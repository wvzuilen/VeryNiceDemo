# use a node base image
FROM wvzuilen/pharo

# set maintainer
MAINTAINER Wouter van Zuilen (wvzuilen@gmail.com)

ADD https://raw.githubusercontent.com/wvzuilen/VeryNiceDemo/master/preload.st /home/pharo/preload.st
ADD https://raw.githubusercontent.com/wvzuilen/VeryNiceDemo/master/postload.st /home/pharo/postload.st

RUN ./pharo Pharo.image st preload.st --quit
RUN ./pharo Pharo.image st postload.st --quit

CMD ["/home/pharo/pharo", "Pharo.image","--no-quit"]

# tell docker what port to expose
EXPOSE 8088
