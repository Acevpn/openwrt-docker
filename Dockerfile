FROM docker.io/openwrtorg/rootfs

EXPOSE 22 80 443 51820

#VOLUME /bin/
VOLUME /etc/
#VOLUME /lib/
#VOLUME /lib64/
#VOLUME /mnt/
#VOLUME /overlay/
#VOLUME /rom/
#VOLUME /root/
#VOLUME /sbin/
#VOLUME /tmp/
#VOLUME /usr/
#VOLUME /var/
#VOLUME /www/
#VOLUME /etc/config/

RUN mkdir -p /var/lock \
  && mkdir -p /var/run \
  && opkg update \
  && opkg install \
    luci \
    luci-ssl \
    luci-theme-openwrt \
    luci-app-https-dns-proxy \
  && rm /var/opkg-lists/* \
  && /etc/init.d/dropbear enable

CMD ["/sbin/init"]
