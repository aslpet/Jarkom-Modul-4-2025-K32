# !/bin/bash
# Host A13 - Branch 2
# Mirkwood

auto eth0
iface eth0 inet static
    address 192.227.14.2
    netmask 255.255.255.128
    gateway 192.227.14.1

post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf

# Morgul
auto eth0
iface eth0 inet static
    address 192.227.14.3
    netmask 255.255.255.128
    gateway 192.227.14.1

post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf
