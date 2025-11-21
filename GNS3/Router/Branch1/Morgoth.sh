#!/bin/bash
# Router Morgoth

auto lo
iface lo inet loopback

auto eth0
iface eth0 inet static
    address 192.227.15.186
    netmask 255.255.255.248

auto eth1
iface eth1 inet static
    address 192.227.15.1
    netmask 255.255.255.192

# CLI Interface
#!/bin/bash
up echo 1 > /proc/sys/net/ipv4/ip_forward

# --- Interfaces ---
up ip addr flush dev eth0
up ip addr add 192.227.15.186/29 dev eth0
up ip link set eth0 up

up ip addr flush dev eth1
up ip addr add 192.227.15.1/26 dev eth1
up ip link set eth1 up

# --- Routes ---

# A2 subnet (via Throne)
up ip route add 192.227.15.192/29 via 192.227.15.187

# Default route ke Amroth
up ip route add default via 192.227.15.185



