FROM alpine:3.7

LABEL maintainer "Stefano Marinelli <stefano@dragas.it>"

RUN apk --no-cache add thttpd

VOLUME /var/www/http
WORKDIR /var/www/http

EXPOSE 80

ENTRYPOINT ["/bin/thttpd", "-D", "-l", "/dev/stderr"]
CMD ["-d", "/var/www/http"]
