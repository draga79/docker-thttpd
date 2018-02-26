FROM alpine:3.7

LABEL maintainer "Stefano Marinelli <stefano@dragas.it>"

RUN apk --no-cache add thttpd

WORKDIR /var/www/http

EXPOSE 80

ENTRYPOINT ["/usr/sbin/thttpd"]
CMD ["-D",  "-l", "/dev/stderr", "-C", "/etc/thttpd.conf"]
