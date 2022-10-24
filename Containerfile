FROM docker.io/almalinux/9-minimal:latest

RUN microdnf install -y dnsmasq \
    && microdnf update -y \
    && microdnf clean all -y

EXPOSE 53 53/udp 67/udp

ENTRYPOINT ["/usr/sbin/dnsmasq"]

CMD ["-k", "--log-facility=-"]
