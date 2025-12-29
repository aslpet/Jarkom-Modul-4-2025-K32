#!/bin/bash
# Host Erebor - A2 (192.227.15.192/29)

auto lo
iface lo inet loopback

auto eth0
iface eth0 inet static
    address 192.227.15.194
    netmask 255.255.255.248
    gateway 192.227.15.193

# CLI Interface
ip addr flush dev eth0
ip addr add 192.227.15.194/29 dev eth0
ip link set eth0 up
ip route add default via 192.227.15.193

echo "[Erebor ready]"


