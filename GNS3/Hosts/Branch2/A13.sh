#!/bin/bash
# Config for A13.sh (Branch 2)

# Host A13 - Branch 2
# Mirkwood
auto eth0
iface eth0 inet static
    address 192.227.14.2
    netmask 255.255.255.128
    gateway 192.227.14.1
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.14.2/25 dev eth0
ip link set eth0 up
ip route add default via 192.227.14.1
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Mirkwood Ready]'

# --------------------------------------------

# Morgul
auto eth0
iface eth0 inet static
    address 192.227.14.3
    netmask 255.255.255.128
    gateway 192.227.14.1
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.14.3/25 dev eth0
ip link set eth0 up
ip route add default via 192.227.14.1
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Morgul Ready]'