FROM python:2
MAINTAINER Paul Woelfel <github@frig.at>

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get -y install nodejs
RUN npm install -g bower
