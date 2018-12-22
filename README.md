This is a docker container for the [OpenWRT](https://openwrt.org/). Based of [katta/openwrt-rootfs](https://hub.docker.com/r/katta/openwrt-rootfs)

To build, execute the following command:
```
docker build --rm -f "OpenWRT\Dockerfile" -t openwrt:latest OpenWRT
```
To run, execute the following command:
```
docker run --rm -it -p 2222:22/tcp -p 44343:443/tcp -p 8080:80/tcp --name=openwrt-acevpn openwrt:latest
```

Questions? Contact [Acevpn](https://www.acevpn.com/)