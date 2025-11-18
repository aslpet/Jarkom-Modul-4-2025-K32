#!/bin/bash
# Router Erain - Branch 2

auto eth0
iface eth0 inet static
    address 192.227.15.218
    netmask 255.255.255.252

auto eth1
iface eth1 inet static
    address 192.227.10.1
    netmask 255.255.254.0

auto eth2
iface eth2 inet static
    address 192.227.8.1
    netmask 255.255.254.0

# CLI Interface
#!/bin/bash
echo 1 > /proc/sys/net/ipv4/ip_forward

# Interfaces
ip addr flush dev eth0
ip addr add 192.227.15.218/30 dev eth0
ip link set eth0 up

ip addr flush dev eth1
ip addr add 192.227.10.1/23 dev eth1
ip link set eth1 up

ip addr flush dev eth2
ip addr add 192.227.8.1/23 dev eth2
ip link set eth2 up

# Default via Mordor
ip route add default via 192.227.15.217

# LAN A8 + A9
ip route add 192.227.10.0/23 dev eth1
ip route add 192.227.8.0/23 dev eth2
