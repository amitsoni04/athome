FROM ubuntu:latest

RUN apt update && apt install -y apache2

COPY ./index.html /var/www/html/index.html

CMD ["apachectl","-D","FOREGROUND"]

EXPOSE 80
