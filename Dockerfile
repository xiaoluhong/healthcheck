FROM rancher/healthcheck:v0.3.6

RUN     echo "net.netfilter.nf_conntrack_max = 655360" >> /etc/sysctl.conf \
    &&  echo "fs.file-max = 3000000 " >> /etc/sysctl.conf \
    &&  echo "fs.nr_open = 3000000 " >> /etc/sysctl.conf \
    &&  echo "* soft nofile 1000000" >> /etc/security/limits.conf \
    &&  echo "* hard nofile 1000000" >> /etc/security/limits.conf \
    && sysctl -p

COPY haproxy_template.cfg /etc/haproxy/
COPY haproxy.cfg /etc/haproxy/