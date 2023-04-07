FROM    debian:buster

RUN     apt-get -y update && apt-get -y install nginx

COPY    default.conf /etc/nginx/sites-available/default

COPY    ng.crt /etc/nginx/ng.crt

COPY    ng.key /etc/nginx/ng.key

CMD     ["nginx", "-g", "daemon off;"]