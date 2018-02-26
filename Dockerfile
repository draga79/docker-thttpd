FROM alpine:3.7

LABEL maintainer "Stefano Marinelli <stefano@dragas.it>"

RUN apk --no-cache add thttpd

VOLUME /var/www/http

EXPOSE 80

ENTRYPOINT thttpd -D
