# !/bin/bash
# Host A20 - Branch 3
# Doriath
auto eth0
iface eth0 inet static
    address 192.227.15.130
    netmask 255.255.255.224
    gateway 192.227.15.129
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf

# Arnor
auto eth0
iface eth0 inet static
    address 192.227.15.131
    netmask 255.255.255.224
    gateway 192.227.15.129
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf
