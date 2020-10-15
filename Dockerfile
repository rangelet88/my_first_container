FROM debian
LABEL MAINTAINER="Ramon Àngel Garcia Adell"

# Comentari

RUN apt-get update && \
    apt-get install -y wget libapache2-mod-php php-mysql php-gd
    
WORKDIR /var/www/html

RUN wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz

EXPOSE 80

CMD [ "/usr/sbin/apachectl", "-D", "FOREGROUND" ]
