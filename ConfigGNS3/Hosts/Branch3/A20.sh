#!/bin/bash
# Config for A20.sh (Branch 3)

# Host A20 - Branch 3
# Doriath
auto eth0
iface eth0 inet static
    address 192.227.15.130
    netmask 255.255.255.224
    gateway 192.227.15.129
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.15.130/27 dev eth0
ip link set eth0 up
ip route add default via 192.227.15.129
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Doriath Ready]'

# --------------------------------------------

# Arnor
auto eth0
iface eth0 inet static
    address 192.227.15.131
    netmask 255.255.255.224
    gateway 192.227.15.129
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.15.131/27 dev eth0
ip link set eth0 up
ip route add default via 192.227.15.129
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Arnor Ready]'