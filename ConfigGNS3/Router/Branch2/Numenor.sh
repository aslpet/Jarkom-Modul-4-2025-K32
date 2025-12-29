#!/bin/bash
# Router Numenor - Branch 2

auto eth0
iface eth0 inet static
    address 192.227.15.230
    netmask 255.255.255.252

auto eth1
iface eth1 inet static
    address 192.227.15.221
    netmask 255.255.255.252

auto eth2
iface eth2 inet static
    address 192.227.15.225
    netmask 255.255.255.252

auto eth3
iface eth3 inet static
    address 192.227.0.1
    netmask 255.255.252.0

# CLI Interface
#!/bin/bash
up echo 1 > /proc/sys/net/ipv4/ip_forward

# --- Interfaces ---
up ip addr flush dev eth0
up ip addr add 192.227.15.230/30 dev eth0
up ip link set eth0 up

up ip addr flush dev eth1
up ip addr add 192.227.15.221/30 dev eth1
up ip link set eth1 up

up ip addr flush dev eth2
up ip addr add 192.227.15.225/30 dev eth2
up ip link set eth2 up

up ip addr flush dev eth3
up ip addr add 192.227.0.1/22 dev eth3
up ip link set eth3 up

# --- ROUTE ---
up ip route add default via 192.227.15.229

# LAN A10
up ip route add 192.227.0.0/22 dev eth3

# via Mordor
up ip route add 192.227.15.217/30 via 192.227.15.222
up ip route add 192.227.10.0/23 via 192.227.15.222
up ip route add 192.227.8.0/23 via 192.227.15.222

# via Gudur
up ip route add 192.227.15.161/28 via 192.227.15.226
up ip route add 192.227.14.129/25 via 192.227.15.226

