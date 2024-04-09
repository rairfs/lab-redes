FROM nginx:1.24.0-alpine-slim

LABEL version="1.0.0" description="Servidor Web com NGINX para Landing Page" maintainer="Rai Rafael Santos Silva <rai.silva@dcomp.ufs.br>"

WORKDIR /

COPY ./index.html /usr/share/nginx/html/index.html