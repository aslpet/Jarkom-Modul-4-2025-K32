#!/bin/bash
# Router Erain - Branch 2

auto eth0
iface eth0 inet static
    address 192.227.15.218
    netmask 255.255.255.252

auto eth1
iface eth1 inet static
    address 192.227.10.1
    netmask 255.255.254.0

auto eth2
iface eth2 inet static
    address 192.227.8.1
    netmask 255.255.254.0

# CLI Interface
#!/bin/bash
up echo 1 > /proc/sys/net/ipv4/ip_forward

# Interfaces
up ip addr flush dev eth0
up ip addr add 192.227.15.218/30 dev eth0
up ip link set eth0 up

up ip addr flush dev eth1
up ip addr add 192.227.10.1/23 dev eth1
up ip link set eth1 up

up ip addr flush dev eth2
up ip addr add 192.227.8.1/23 dev eth2
up ip link set eth2 up

# Default via Mordor
up ip route add default via 192.227.15.217

# LAN A8 + A9
up ip route add 192.227.10.0/23 dev eth1
up ip route add 192.227.8.0/23 dev eth2
