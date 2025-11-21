#!/bin/bash
# Router Anor

auto lo
iface lo inet loopback

# eth0 = Anor ↔ Minastir  (A5)
auto eth0
iface eth0 inet static
    address 192.227.15.206
    netmask 255.255.255.252

# eth1 = LAN A1 Beacon/Silmarlis
auto eth1
iface eth1 inet static
    address 192.227.4.1
    netmask 255.255.252.0

# CLI Interface
#!/bin/bash

up echo 1 > /proc/sys/net/ipv4/ip_forward

# ----------- INTERFACES -----------

up ip addr flush dev eth0
up ip addr add 192.227.15.206/30 dev eth0
up ip link set eth0 up

up ip addr flush dev eth1
up ip addr add 192.227.4.1/22 dev eth1
up ip link set eth1 up

# ----------- STATIC ROUTES -----------

# Default ke Minastir
up ip route add default via 192.227.15.205




