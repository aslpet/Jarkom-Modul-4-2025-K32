#!/bin/bash
# Router Valinor - Branch 3

auto eth0
iface eth0 inet static
    address 192.227.15.179
    netmask 255.255.255.248

auto eth1
iface eth1 inet static
    address 192.227.12.1
    netmask 255.255.254.0

# CLI Interface
echo 1 > /proc/sys/net/ipv4/ip_forward

ip addr add 192.227.15.179/29 dev eth0
ip link set eth0 up

ip addr add 192.227.12.1/23 dev eth1
ip link set eth1 up

# A19 (Valmar) via 178
ip route add 192.227.15.64/26 via 192.227.15.178

# A20 (Valmar) via 178
ip route add 192.227.15.128/27 via 192.227.15.178

# default → Fornost
ip route add default via 192.227.15.177

