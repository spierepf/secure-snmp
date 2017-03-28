FROM ubuntu

RUN DEBIAN_FRONTEND=noninteractive apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install openssh-server socat snmp -y --no-install-recommends
RUN mkdir /var/run/sshd

RUN useradd -m daa
RUN mkdir /home/daa/.ssh
COPY authorized_keys /home/daa/.ssh
COPY accept_connection.sh /home/daa
COPY hand_of_fate.sh /home/daa
RUN chmod 700 /home/daa/.ssh
RUN chmod 600 /home/daa/.ssh/authorized_keys
RUN chown -R daa:daa /home/daa

CMD ["/usr/sbin/sshd", "-D"]
