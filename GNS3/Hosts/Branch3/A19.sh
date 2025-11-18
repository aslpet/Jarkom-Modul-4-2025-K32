# !/bin/bash
# Host A19 - Branch 3
# Imrahil
auto eth0
iface eth0 inet static
    address 192.227.15.66
    netmask 255.255.255.192
    gateway 192.227.15.65
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf

# Utumno
auto eth0
iface eth0 inet static
    address 192.227.15.66
    netmask 255.255.255.192
    gateway 192.227.15.65
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf

# Gwaith
auto eth0
iface eth0 inet static
    address 192.227.15.68
    netmask 255.255.255.192
    gateway 192.227.15.65
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf
