FROM ubuntu:latest

MAINTAINER running "A576236148946@126.com"

RUN apt update
RUN apt install procps -y \ 
	&& apt install curl -y \ 
	&& apt install vim -y \ 
	&& apt install libaio1 -y \
	&& apt install cmake -y \
	&& apt install libncurses5-dev -y \ 
	&& apt install libssl-dev -y \ 
	&& apt install wget -y \
	&& mkdir -p /myself/environment \
	&& mkdir -p /myself/software
RUN cd /myself/software \
	&& wget https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-boost-8.0.20.tar.gz -o /myself/software/mysql.tar.gz
RUN tar -zxvf /myself/software/mysql.tar.gz -C /myself/software/mysql
#RUN cd /myself/software/mysql \ 
#	&& mkdir -p build \ 
#	&& cd build \
#	&& cmake ../ -DDOWNLOAD_BOOST=1 -DWITH_BOOST=/myself/software/mysql/boost_1_67_0 -DCMAKE_INSTALL_PREFIX=/usr/local/webEnv/mysql-8.0.13
	
CMD ["tail" , "-f /dev/null"]
