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

up echo 1 > /proc/sys/net/ipv4/ip_forward

# --- Configure interfaces ---
up ip addr flush dev eth0
up ip addr add 192.227.15.234/30 dev eth0
up ip link set eth0 up

up ip addr flush dev eth1
up ip addr add 192.227.15.229/30 dev eth1
up ip link set eth1 up

up ip addr flush dev eth2
up ip addr add 192.227.14.1/25 dev eth2
up ip link set eth2 up

# --- ROUTING ---
# via Amonsul
up ip route add default via 192.227.15.233

# LAN A13
up ip route add 192.227.14.0/25 dev eth2

# via Numenor (A17)
up ip route add 192.227.0.0/22 via 192.227.15.230
up ip route add 192.227.15.221/32 via 192.227.15.230
up ip route add 192.227.10.0/23 via 192.227.15.230
up ip route add 192.227.8.0/23 via 192.227.15.230
up ip route add 192.227.15.161/28 via 192.227.15.230
up ip route add 192.227.14.129/25 via 192.227.15.230


