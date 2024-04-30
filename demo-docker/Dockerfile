# Stage Build
FROM  ubuntu as builder

RUN apt update && apt upgrade -y

RUN apt install apache2 -y

WORKDIR /var/www/html/

COPY ./index.html /var/www/html/


# Stage run

# FROM host/image:tag
FROM  apache2

RUN adduser toto

COPY --from=builder --chown=toto:toto /var/www/html/ /var/www/html/

EXPOSE 80

CMD [ "service", "apache2", "start" ]

