remmina in docker

```
version: "2.2"
networks:
  lan13:
    name: lan13
    driver: macvlan
    driver_opts:
      parent: eth1
    ipam:
      config:
        - subnet: "192.168.13.0/24"
          gateway: "192.168.13.1"
services:
  remmina:
    container_name: "remmina"
    hostname: "remmina"
    image: "sleechengn/remmina:latest"
    environment:
      TITLE: 'remmina'
    restart: always
    networks:
      lan13:
        ipv4_address: 192.168.13.66
```
