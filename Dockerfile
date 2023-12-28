FROM ubuntu

LABEL maintainer="your-email@example.com" \
      description="Apache web server on Ubuntu"

RUN apt update && \
    apt install apache2 -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT apachectl -D FOREGROUND

COPY . /var/www/html
