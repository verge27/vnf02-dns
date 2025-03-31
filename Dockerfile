FROM alpine:3.19

RUN apk add --no-cache tor bind-tools dnsmasq

COPY torrc /etc/tor/torrc
COPY dnsmasq.conf /etc/dnsmasq.conf
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
