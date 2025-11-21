#!/bin/bash
# Config for A21.sh (Branch 3)

# Host A21 - Branch 3
# Shadow
auto eth0
iface eth0 inet static
    address 192.227.12.2
    netmask 255.255.254.0
    gateway 192.227.12.1
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.12.2/23 dev eth0
ip link set eth0 up
ip route add default via 192.227.12.1
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Shadow Ready]'

# --------------------------------------------

# Anarion
auto eth0
iface eth0 inet static
    address 192.227.12.3
    netmask 255.255.254.0
    gateway 192.227.12.1
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.12.3/23 dev eth0
ip link set eth0 up
ip route add default via 192.227.12.1
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Anarion Ready]'

# --------------------------------------------

# Lindon
auto eth0
iface eth0 inet static
    address 192.227.12.4
    netmask 255.255.254.0
    gateway 192.227.12.1
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.12.4/23 dev eth0
ip link set eth0 up
ip route add default via 192.227.12.1
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Lindon Ready]'