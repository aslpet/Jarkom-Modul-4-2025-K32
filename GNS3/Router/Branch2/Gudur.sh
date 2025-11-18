#!/bin/bash
# Router Gudur - Branch 2

auto eth0
iface eth0 inet static
    address 192.227.15.226
    netmask 255.255.255.252

auto eth1
iface eth1 inet static
    address 192.227.15.161
    netmask 255.255.255.240

auto eth2
iface eth2 inet static
    address 192.227.14.129
    netmask 255.255.255.128

# CLI Interface
#!/bin/bash
echo 1 > /proc/sys/net/ipv4/ip_forward

ip addr flush dev eth0
ip addr add 192.227.15.226/30 dev eth0
ip link set eth0 up

ip addr flush dev eth1
ip addr add 192.227.15.161/28 dev eth1
ip link set eth1 up

ip addr flush dev eth2
ip addr add 192.227.14.129/25 dev eth2
ip link set eth2 up

# Default → Numenor
ip route add default via 192.227.15.225

# LAN A11 & A12
ip route add 192.227.15.160/28 dev eth1
ip route add 192.227.14.128/25 dev eth2
