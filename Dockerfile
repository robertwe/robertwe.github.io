FROM nginx:mainline-alpine
LABEL maintainer="robert.weclawski@mykolab.com"

COPY ./docs /usr/share/nginx/html
COPY ./nginx/default.conf /etc/nginx/conf.d/