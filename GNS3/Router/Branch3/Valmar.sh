#!/bin/bash
# Router Valmar - Branch 3

auto eth0
iface eth0 inet static
    address 192.227.15.178
    netmask 255.255.255.248

auto eth1
iface eth1 inet static
    address 192.227.15.65
    netmask 255.255.255.192

auto eth2
iface eth2 inet static
    address 192.227.15.129
    netmask 255.255.255.224

# CLI Interface
echo 1 > /proc/sys/net/ipv4/ip_forward

ip addr add 192.227.15.178/29 dev eth0
ip link set eth0 up

ip addr add 192.227.15.65/26 dev eth1
ip link set eth1 up

ip addr add 192.227.15.129/27 dev eth2
ip link set eth2 up

# A21 via Valinor
ip route add 192.227.12.0/23 via 192.227.15.179

# Default via Fornost
ip route add default via 192.227.15.177

