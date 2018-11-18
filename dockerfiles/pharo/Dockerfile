# use a node base image
FROM ubuntu:trusty

# set maintainer
MAINTAINER Wouter van Zuilen (wvzuilen@gmail.com)

# set a health check
RUN sudo apt-get update
RUN sudo apt-get install -y unzip
RUN sudo apt-get install -y nano
RUN sudo apt-get install -y wget
RUN sudo apt-get install -y curl

# load 32-bit libraries
RUN sudo dpkg --add-architecture i386
RUN sudo apt-get update
RUN sudo apt-get install -y libx11-6:i386
RUN sudo apt-get install -y libgl1-mesa-glx:i386
RUN sudo apt-get install -y libfontconfig1:i386
RUN sudo apt-get install -y libssl1.0.0:i386

RUN mkdir /home/pharo
WORKDIR /home/pharo
RUN wget -O- https://get.pharo.org | bash
