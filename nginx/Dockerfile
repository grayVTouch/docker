FROM nginx

MAINTAINER running "A576236148946@126.com"

RUN mkdir -p /myself/web/test \
	&& echo "hello boys and girls" > /myself/web/test/index.html \
	&& apt update \
	&& apt install curl -y \
	&& apt install procps -y \
	&& apt install vim -y

COPY  conf/nginx.conf	/etc/nginx/
COPY  conf/conf.d		/etc/nginx/conf.d/
COPY  startup.sh		/command/

CMD ["/bin/bash" , "/command/startup.sh"]