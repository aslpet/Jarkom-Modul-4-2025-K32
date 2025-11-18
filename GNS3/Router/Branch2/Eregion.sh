#!/bin/bash
# Router Eregion - Branch 2

auto eth0
iface eth0 inet static
    address 192.227.15.234
    netmask 255.255.255.252

auto eth1
iface eth1 inet static
    address 192.227.15.229
    netmask 255.255.255.252

auto eth2
iface eth2 inet static
    address 192.227.14.1
    netmask 255.255.255.128

# CLI Interface
#!/bin/bash

echo 1 > /proc/sys/net/ipv4/ip_forward

# --- Configure interfaces ---
ip addr flush dev eth0
ip addr add 192.227.15.234/30 dev eth0
ip link set eth0 up

ip addr flush dev eth1
ip addr add 192.227.15.229/30 dev eth1
ip link set eth1 up

ip addr flush dev eth2
ip addr add 192.227.14.1/25 dev eth2
ip link set eth2 up

# --- ROUTING ---
# via Amonsul
ip route add default via 192.227.15.233

# LAN A13
ip route add 192.227.14.0/25 dev eth2

# via Numenor (A17)
ip route add 192.227.0.0/22 via 192.227.15.230
ip route add 192.227.15.221/32 via 192.227.15.230
ip route add 192.227.15.225/32 via 192.227.15.230
ip route add 192.227.10.0/23 via 192.227.15.230
ip route add 192.227.8.0/23 via 192.227.15.230
ip route add 192.227.15.161/28 via 192.227.15.230
ip route add 192.227.14.129/25 via 192.227.15.230


