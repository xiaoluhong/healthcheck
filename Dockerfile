FROM rancher/healthcheck:v0.3.7

COPY haproxy_template.cfg /etc/haproxy/
COPY haproxy.cfg /etc/haproxy/