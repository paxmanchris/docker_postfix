From ubuntu:trusty
MAINTAINER Christopher Pax <christopher.pax@gmail.com>


ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update --fix-missing -y

RUN apt-get upgrade --fix-missing -y


ADD config.sh /config.sh
ADD run.sh /run.sh
RUN chmod +x ./*.sh
RUN ./config.sh
RUN apt-get install vim -y
RUN apt-get install supervisor mailutils -y

#RUN rm /etc/supervisor/conf.d/*
ADD supervisord-postfix.conf /etc/supervisor/conf.d/supervisord-postfix.conf






VOLUME [ "/pclocal" ]

EXPOSE 25:25 587:587
CMD ["./run.sh"]
