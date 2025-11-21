#!/bin/bash
# Router Mordor - Branch 2

auto eth0
iface eth0 inet static
    address 192.227.15.222
    netmask 255.255.255.252

auto eth1
iface eth1 inet static
    address 192.227.15.217
    netmask 255.255.255.252

# CLI Interface
#!/bin/bash
up echo 1 > /proc/sys/net/ipv4/ip_forward

up ip addr flush dev eth0
up ip addr add 192.227.15.222/30 dev eth0
up ip link set eth0 up

up ip addr flush dev eth1
up ip addr add 192.227.15.217/30 dev eth1
up ip link set eth1 up

# default → Numenor
up ip route add default via 192.227.15.221

# to A8 / A9 via Erain
up ip route add 192.227.10.0/23 via 192.227.15.218
up ip route add 192.227.8.0/23 via 192.227.15.218

