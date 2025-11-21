#!/bin/bash
# Config for A12.sh (Branch 2)

# Host A12 - Branch 2
# Palantir
auto eth0
iface eth0 inet static
    address 192.227.14.130
    netmask 255.255.255.128
    gateway 192.227.14.129
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.14.130/25 dev eth0
ip link set eth0 up
ip route add default via 192.227.14.129
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Palantir Ready]'

# --------------------------------------------

# Edhil
auto eth0
iface eth0 inet static
    address 192.227.14.131
    netmask 255.255.255.128
    gateway 192.227.14.129
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.14.131/25 dev eth0
ip link set eth0 up
ip route add default via 192.227.14.129
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Edhil Ready]'