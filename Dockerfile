FROM python:2
MAINTAINER Paul Woelfel <github@frig.at>

RUN apt-get update && apt-get -y upgrade && apt-get -y install apt-transport-https lsb-release && rm -rf /var/lib/apt/lists/*
RUN echo "deb https://packages.cloud.google.com/apt cloud-sdk-$(lsb_release -c -s) main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN echo 'deb https://deb.nodesource.com/node_7.x jessie main\n\
deb-src https://deb.nodesource.com/node_7.x jessie main' > /etc/apt/sources.list.d/nodesource.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
# RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get update && apt-get -y install nodejs google-cloud-sdk google-cloud-sdk-app-engine-python && rm -rf /var/lib/apt/lists/*
RUN npm install -g bower
