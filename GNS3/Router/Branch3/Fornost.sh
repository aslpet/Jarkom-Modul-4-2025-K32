#!/bin/bash
# Router Fornost - Branch 3

auto eth0
iface eth0 inet static
    address 192.227.15.202
    netmask 255.255.255.252

auto eth1
iface eth1 inet static
    address 192.227.15.177
    netmask 255.255.255.248

auto eth2
iface eth2 inet static
    address 192.227.15.179
    netmask 255.255.255.248

# CLI Interface
echo 1 > /proc/sys/net/ipv4/ip_forward

ip addr add 192.227.15.202/30 dev eth0
ip link set eth0 up

ip addr add 192.227.15.177/29 dev eth1
ip link set eth1 up

ip addr add 192.227.15.179/29 dev eth2
ip link set eth2 up

# via Valmar
ip route add 192.227.15.64/26 via 192.227.15.178   # A19 LAN
ip route add 192.227.15.128/27 via 192.227.15.178  # A20 LAN

# via Valinor
ip route add 192.227.12.0/23 via 192.227.15.180    # A21 LAN

# default → Amonsul
ip route add default via 192.227.15.201

