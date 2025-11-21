#!/bin/bash
# Config for A10.sh (Branch 2)

# Host A10 - Branch 2
# Arthedain
auto eth0
iface eth0 inet static
    address 192.227.0.2
    netmask 255.255.252.0
    gateway 192.227.0.1
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.0.2/22 dev eth0
ip link set eth0 up
ip route add default via 192.227.0.1
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Arthedain Ready]'

# --------------------------------------------

# Mirdain
auto eth0
iface eth0 inet static
    address 192.227.0.3
    netmask 255.255.252.0
    gateway 192.227.0.1
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.0.3/22 dev eth0
ip link set eth0 up
ip route add default via 192.227.0.1
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Mirdain Ready]'