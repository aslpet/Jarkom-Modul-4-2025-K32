#!/bin/bash
# Config for A19.sh (Branch 3)

# Host A19 - Branch 3
# Imrahil
auto eth0
iface eth0 inet static
    address 192.227.15.66
    netmask 255.255.255.192
    gateway 192.227.15.65
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.15.66/26 dev eth0
ip link set eth0 up
ip route add default via 192.227.15.65
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Imrahil Ready]'

# --------------------------------------------

# Utumno
auto eth0
iface eth0 inet static
    address 192.227.15.66
    netmask 255.255.255.192
    gateway 192.227.15.65
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.15.66/26 dev eth0
ip link set eth0 up
ip route add default via 192.227.15.65
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Utumno Ready]'

# --------------------------------------------

# Gwaith
auto eth0
iface eth0 inet static
    address 192.227.15.68
    netmask 255.255.255.192
    gateway 192.227.15.65
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.15.68/26 dev eth0
ip link set eth0 up
ip route add default via 192.227.15.65
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Gwaith Ready]'