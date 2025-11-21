#!/bin/bash
# Router Amroth

auto lo
iface lo inet loopback

# A6 – Ke Minastir
auto eth0
iface eth0 inet static
    address 192.227.15.210
    netmask 255.255.255.252

# A4 – Ke Morgoth
auto eth1
iface eth1 inet static
    address 192.227.15.185
    netmask 255.255.255.248

# CLI Interface
#!/bin/bash
up echo 1 > /proc/sys/net/ipv4/ip_forward

# ---- Interfaces ----
up ip addr flush dev eth0
up ip addr add 192.227.15.210/30 dev eth0
up ip link set eth0 up

up ip addr flush dev eth1
up ip addr add 192.227.15.185/29 dev eth1
up ip link set eth1 up

# ---- Routes ----

# Kirim ke A3 (Erendis/Elrond) via Morgoth
up ip route add 192.227.15.0/26 via 192.227.15.186

# Kirim ke A2 (Erebor) via Throne (Throne = 192.227.15.187)
up ip route add 192.227.15.192/29 via 192.227.15.187

# Default ke Minastir
up ip route add default via 192.227.15.209