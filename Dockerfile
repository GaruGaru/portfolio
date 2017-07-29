FROM alpine:3.5

RUN apk --update add nginx

RUN mkdir -p /run/nginx

ADD nginx/garu.pizza /etc/nginx/conf.d/default.conf 

ADD . /var/www/html

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
