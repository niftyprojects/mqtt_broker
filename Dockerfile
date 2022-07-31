# syntax=docker/dockerfile:1
FROM ubuntu:20.04
RUN apt-get update -y && \
	apt-get -y install software-properties-common && \
	apt-add-repository ppa:mosquitto-dev/mosquitto-ppa && \
	apt-get update -y && \
	apt-get install mosquitto -y
COPY mosquitto.conf /etc/mosquitto/mosquitto.conf
CMD /usr/sbin/mosquitto -c /etc/mosquitto/mosquitto.conf
EXPOSE 1883
