# Openwrt Docker

[![ci](https://github.com/xpertdev/openwrt-docker/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/xpertdev/openwrt-docker/actions/workflows/docker-publish.yml)

This is a docker container for [OpenWRT](https://openwrt.org/). Based of [openwrtorg/rootfs](https://hub.docker.com/r/openwrtorg/rootfs)

Prebuilt image is at https://hub.docker.com/r/acevpn/openwrt
```
docker pull acevpn/openwrt
```
Source code at https://github.com/Acevpn/openwrt-docker
```
https://github.com/Acevpn/openwrt-docker
```

To build, execute the following command:
```
docker build --rm -f "OpenWRT\Dockerfile" -t openwrt:x86_64 OpenWRT
```
To run, execute the following command:
```
docker run --rm -it -p 2222:22/tcp -p 44343:443/tcp -p 8080:80/tcp --name=openwrt-acevpn openwrt:x86_64
```
Access via
```
http://localhost:8080/
```

### Architecture Supported

* linux/amd64
* linux/arm64

Questions? Contact [Acevpn](https://www.acevpn.com/)
