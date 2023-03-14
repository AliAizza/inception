FROM debian:buster

RUN apt-get -y update && apt-get -y install php php7.3-fpm php7.3-mysql wget

WORKDIR /var/www/html/

RUN echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

RUN wget http://wordpress.org/latest.tar.gz

RUN tar xfz latest.tar.gz

RUN rm -f latest.tar.gz

COPY script.sh ./wordpress

COPY wp-config.php ./wordpress

RUN chmod -R 777 ./wordpress

RUN chown -R www-data:www-data ./wordpress

WORKDIR /var/www/html/wordpress

ENTRYPOINT [ "bash", "script.sh" ]

CMD [ "php-fpm7.3", "-F", "-R" ]