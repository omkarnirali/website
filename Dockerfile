FROM ubuntu
RUN apt update
RUN apt install apache2 -y
ENTRYPOINT apachectl -D FOREGROUND
COPY /home/ubuntu/jenkins/workspace/Job1  /var/www/html
