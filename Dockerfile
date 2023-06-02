FROM ubuntu

RUN apt-get update && apt-get install -y git nginx spawn-fcgi fcgiwrap \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

EXPOSE 80

STOPSIGNAL SIGTERM
