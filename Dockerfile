ARG VERSION=x86_64

FROM docker.io/openwrtorg/openwrt-rootfs:$VERSION

RUN mkdir -p /var/lock \
  && mkdir -p /var/run \
  && opkg update \
  && opkg install \
    luci \
    luci-ssl \
    luci-theme-openwrt \
  && rm /var/opkg-lists/* \
  && /etc/init.d/dropbear enable

EXPOSE 80 443 22
VOLUME /etc/config/

CMD ["/sbin/init"]
