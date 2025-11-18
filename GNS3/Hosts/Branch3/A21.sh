# !/bin/bash
# Host A21 - Branch 3
# Shadow
auto eth0
iface eth0 inet static
    address 192.227.12.2
    netmask 255.255.254.0
    gateway 192.227.12.1
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf

# Anarion
auto eth0
iface eth0 inet static
    address 192.227.12.3
    netmask 255.255.254.0
    gateway 192.227.12.1
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf

# Lindon
auto eth0
iface eth0 inet static
    address 192.227.12.4
    netmask 255.255.254.0
    gateway 192.227.12.1
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf
