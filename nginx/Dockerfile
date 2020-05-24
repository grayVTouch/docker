FROM nginx:latest

MAINTAINER running "A576236148946@126.com"

RUN apt update
RUN apt install curl -y \
	&& apt install procps -y \
	&& apt install vim -y 

COPY  vhost			/etc/nginx/vhost
COPY  nginx.conf	/etc/nginx/

WORKDIR /myself

volume /myself

CMD ["nginx"]
