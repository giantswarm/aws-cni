ARG srcimage

FROM $srcimage

RUN yum update -y && yum install -y iptables-nft && update-alternatives --set iptables /usr/sbin/iptables-nft && yum clean all
