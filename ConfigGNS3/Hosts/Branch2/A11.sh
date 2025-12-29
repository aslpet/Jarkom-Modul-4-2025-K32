#!/bin/bash
# Config for A11.sh (Branch 2)

# Host A11 - Branch 2
# IronCrown
auto eth0
iface eth0 inet static
    address 192.227.15.162
    netmask 255.255.255.240
    gateway 192.227.15.161
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.15.162/28 dev eth0
ip link set eth0 up
ip route add default via 192.227.15.161
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[IronCrown Ready]'

# --------------------------------------------

# Grond
auto eth0
iface eth0 inet static
    address 192.227.15.163
    netmask 255.255.255.240
    gateway 192.227.15.161
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.15.163/28 dev eth0
ip link set eth0 up
ip route add default via 192.227.15.161
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Grond Ready]'

# --------------------------------------------

# Hobbiton
auto eth0
iface eth0 inet static
    address 192.227.15.164
    netmask 255.255.255.240
    gateway 192.227.15.161
    dns-nameservers 192.168.122.1

# CLI (Runtime)
ip addr flush dev eth0
ip addr add 192.227.15.164/28 dev eth0
ip link set eth0 up
ip route add default via 192.227.15.161
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
echo '[Hobbiton Ready]'