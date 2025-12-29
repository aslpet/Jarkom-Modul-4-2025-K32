#!/bin/bash
# Config for A8.sh (Branch 2)

# Host A8 - Branch 2
# Balrog
auto eth0
iface eth0 inet static
    address 192.227.10.2
    netmask 255.255.254.0
    gateway 192.227.10.1
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.10.2/23 dev eth0
ip link set eth0 up
ip route add default via 192.227.10.1
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Balrog Ready]'

# --------------------------------------------

# Gothmog
auto eth0
iface eth0 inet static
    address 192.227.10.3
    netmask 255.255.254.0
    gateway 192.227.10.1
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.10.3/23 dev eth0
ip link set eth0 up
ip route add default via 192.227.10.1
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Gothmog Ready]'

# --------------------------------------------

# Thranduil
auto eth0
iface eth0 inet static
    address 192.227.10.4
    netmask 255.255.254.0
    gateway 192.227.10.1
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.10.4/23 dev eth0
ip link set eth0 up
ip route add default via 192.227.10.1
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Thranduil Ready]'