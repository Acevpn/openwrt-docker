FROM docker.io/openwrtorg/rootfs

EXPOSE 80 443 22
VOLUME /etc/config/

RUN mkdir -p /var/lock \
  && mkdir -p /var/run \
  && opkg update \
  && opkg install \
    luci && luci-ssl && luci-theme-openwrt && luci-app-https-dns-proxy \
  && rm /var/opkg-lists/* \
  && /etc/init.d/dropbear enable

CMD ["/sbin/init"]
