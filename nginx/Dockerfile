FROM nginx

MAINTAINER running "A576236148946@126.com"

RUN mkdir -p /myself/web/test \ 
	&& mkdir -p /myself/command/system \
	&& echo "hello boys and girls" > /myself/web/test/index.html \
	&& apt update \
	&& apt install curl -y \
	&& apt install procps -y \
	&& apt install vim -y

COPY  conf/nginx.conf	/etc/nginx
COPY  conf/conf.d		/etc/nginx/conf.d
COPY  startup.sh		/myself/command/system

RUN sed -i 's/\r//g' /myself/command/system/startup.sh

CMD ["/bin/bash" , "/myself/command/system/startup.sh"]