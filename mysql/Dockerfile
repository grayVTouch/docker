FROM mysql:latest

MAINTAINER running "A576236148946@126.com"


# 可选指定的数据库相关参数
# MYSQL_ROOT_PASSWORD=123456
ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes

RUN apt update
RUN apt install procps -y \ 
	&& apt install curl -y \ 
	&& apt install vim -y

COPY my.cnf /etc/mysql
COPY conf.d /etc/mysql/conf.d

CMD ["mysqld"]
	
