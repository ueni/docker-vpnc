FROM alpine:latest
LABEL maintainer Nico Ueberfeldt <ueni@live.de>

ENV vpn_concentrator="192.168.0.1"

RUN apk add --no-cache bash vpnc iputils
COPY --chown=root:root vpnc.service /vpnc.service

WORKDIR /etc/vpnc

CMD [ "/vpnc.service" ]