# !/bin/bash
# Host A8 - Branch 2
# Balrog
auto eth0
iface eth0 inet static
    address 192.227.10.2
    netmask 255.255.254.0
    gateway 192.227.10.1
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf

# Gothmog
auto eth0
iface eth0 inet static
    address 192.227.10.3
    netmask 255.255.254.0
    gateway 192.227.10.1
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf

# Thranduil
auto eth0
iface eth0 inet static
    address 192.227.10.4
    netmask 255.255.254.0
    gateway 192.227.10.1
post-up echo "nameserver 192.168.122.1" > /etc/resolv.conf
