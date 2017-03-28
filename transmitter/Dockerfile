FROM ubuntu

RUN echo "deb http://archive.ubuntu.com/ubuntu xenial multiverse" > /etc/apt/sources.list.d/multiverse.list
RUN DEBIAN_FRONTEND=noninteractive apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install snmp-mibs-downloader snmpd openssh-client socat -y --no-install-recommends
RUN echo "agentAddress  tcp:127.0.0.1:161" >> /etc/snmp/snmpd.conf

RUN mkdir /root/.ssh
COPY id_rsa /root/.ssh/id_rsa
COPY id_rsa.pub /root/.ssh/id_rsa.pub
COPY go.sh /root

CMD ["/usr/sbin/snmpd", "-L", "-f", "-u", "snmp", "-g", "snmp", "-I", "-smux,mteTrigger,mteTriggerConf", "-p", "/run/snmpd.pid"]
