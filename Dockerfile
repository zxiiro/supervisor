FROM ubuntu:12.04
MAINTAINER Thanh Ha <thanh.ha@alumni.carleton.ca>

RUN apt-get update

# Install System Requirements
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y supervisor
ADD etc/supervisor /etc/supervisor

CMD ["/usr/sbin/service", "supervisor", "start"]

