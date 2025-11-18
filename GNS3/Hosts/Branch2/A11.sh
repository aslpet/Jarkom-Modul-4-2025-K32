# !/bin/bash
# Host A11 - Branch 2
# IronCrown
auto eth0
iface eth0 inet static
    address 192.227.15.162
    netmask 255.255.255.240
    gateway 192.227.15.161
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf

# Grond
auto eth0
iface eth0 inet static
    address 192.227.15.163
    netmask 255.255.255.240
    gateway 192.227.15.161
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf

# Hobbiton
auto eth0
iface eth0 inet static
    address 192.227.15.164
    netmask 255.255.255.240
    gateway 192.227.15.161
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf
