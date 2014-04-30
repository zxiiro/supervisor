FROM ubuntu:12.04
MAINTAINER Thanh Ha <thanh.ha@alumni.carleton.ca>

RUN apt-get update

# Install System Requirements
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y supervisor openssh-server
ADD etc/supervisor /etc/supervisor

# Setup SSHD
RUN mkdir /var/run/sshd \
    && echo 'root:eclipse_changeme' | chpasswd

# Supervisor and SSHD
EXPOSE 22 9001

CMD ["/usr/sbin/service", "supervisor", "start"]

