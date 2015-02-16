FROM ubuntu

MAINTAINER peschenbach


RUN \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y phantomjs && \
  apt-get autoremove -y && \
  apt-get clean all

ADD "run.sh" "/root/run.sh"
ENV WEBDRIVER_PORT 8091

CMD ["/root/run.sh"]
