FROM nginx:1.24.0-alpine-slim

LABEL version="1.0.0" description="Servidor Web com NGINX para Landing Page" maintainer="Rai Rafael Santos Silva <rai.silva@dcomp.ufs.br>"

WORKDIR /

COPY index.html /var/www/html/

COPY www.dynawebbr.com.br /etc/nginx/sites-available/

RUN unlink /etc/nginx/sites-enabled/default

RUN ln -s /etc/nginx/sites-available/www.dynawebbr.com.br /etc/nginx/sites-enabled

RUN service nginx restart