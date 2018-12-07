FROM alpine

RUN apk update && apk upgrade && \
    apk add --update  --no-cache  \
        apache2 apache2-utils  \
        bash bash-completion 

ADD root /

RUN mkdir -p /run/apache2/ 

EXPOSE 80 443

# CMD ["/usr/sbin/httpd", "-DFOREGROUND"]

ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]
