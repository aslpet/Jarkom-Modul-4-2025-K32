#!/bin/bash
# Host Erendis - A3 (192.227.15.0/26)

auto lo
iface lo inet loopback

auto eth0
iface eth0 inet static
    address 192.227.15.2
    netmask 255.255.255.192
    gateway 192.227.15.1

# CLI Interface
ip addr flush dev eth0
ip addr add 192.227.15.2/26 dev eth0
ip link set eth0 up
ip route add default via 192.227.15.1
echo "[Erendis ready]"

#!/bin/bash
# Host Elrond - A3

auto lo
iface lo inet loopback

auto eth0
iface eth0 inet static
    address 192.227.15.3
    netmask 255.255.255.192
    gateway 192.227.15.1

# CLI Interface
ip addr flush dev eth0
ip addr add 192.227.15.3/26 dev eth0
ip link set eth0 up
ip route add default via 192.227.15.1
echo "[Elrond ready]"
