FROM ubuntu

RUN DEBIAN_FRONTEND=noninteractive apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install openssh-server -y --no-install-recommends
RUN mkdir /var/run/sshd

CMD ["/usr/sbin/sshd", "-D"]
