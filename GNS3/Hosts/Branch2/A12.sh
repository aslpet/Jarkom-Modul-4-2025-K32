# !/bin/bash
# Host A12 - Branch 2
# Palantir
auto eth0
iface eth0 inet static
    address 192.227.14.130
    netmask 255.255.255.128
    gateway 192.227.14.129
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf

# Edhil
auto eth0
iface eth0 inet static
    address 192.227.14.131
    netmask 255.255.255.128
    gateway 192.227.14.129
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf
