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
up echo 1 > /proc/sys/net/ipv4/ip_forward

up ip addr flush dev eth0
up ip addr add 192.227.15.178/29 dev eth0
up ip link set eth0 up

up ip addr flush dev eth1
up ip addr add 192.227.15.65/26 dev eth1
up ip link set eth1 up

up ip addr flush dev eth2
up ip addr add 192.227.15.129/27 dev eth2
up ip link set eth2 up

# A21 via Valinor
up ip route add 192.227.12.0/23 via 192.227.15.179

# Default via Fornost
up ip route add default via 192.227.15.177

