#!/bin/bash
# Config for A9.sh (Branch 2)

# Host A9 - Branch 2
# Melkor
auto eth0
iface eth0 inet static
    address 192.227.8.2
    netmask 255.255.254.0
    gateway 192.227.8.1
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.8.2/23 dev eth0
ip link set eth0 up
ip route add default via 192.227.8.1
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Melkor Ready]'

# --------------------------------------------

# Khazad
auto eth0
iface eth0 inet static
    address 192.227.8.3
    netmask 255.255.254.0
    gateway 192.227.8.1
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.8.3/23 dev eth0
ip link set eth0 up
ip route add default via 192.227.8.1
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Khazad Ready]'