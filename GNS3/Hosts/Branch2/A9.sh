# !/bin/bash
# Host A9 - Branch 2
# Melkor
auto eth0
iface eth0 inet static
    address 192.227.8.2
    netmask 255.255.254.0
    gateway 192.227.8.1
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf

# Khazad
auto eth0
iface eth0 inet static
    address 192.227.8.3
    netmask 255.255.254.0
    gateway 192.227.8.1
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf
