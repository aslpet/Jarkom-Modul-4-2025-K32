# !/bin/bash
# Host A10 - Branch 2
# Arthedain
auto eth0
iface eth0 inet static
    address 192.227.0.2
    netmask 255.255.252.0
    gateway 192.227.0.1

post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf

# Mirdain
auto eth0
iface eth0 inet static
    address 192.227.0.3
    netmask 255.255.252.0
    gateway 192.227.0.1

post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf
