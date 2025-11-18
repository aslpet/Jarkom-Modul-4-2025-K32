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
echo 1 > /proc/sys/net/ipv4/ip_forward

# ---- Interfaces ----
ip addr flush dev eth0
ip addr add 192.227.15.210/30 dev eth0
ip link set eth0 up

ip addr flush dev eth1
ip addr add 192.227.15.185/29 dev eth1
ip link set eth1 up

# ---- Routes ----

# Kirim ke A3 (Erendis/Elrond) via Morgoth
ip route add 192.227.15.0/26 via 192.227.15.186

# Kirim ke A2 (Erebor) via Throne (Throne = 192.227.15.187)
ip route add 192.227.15.192/29 via 192.227.15.187

# Default ke Minastir
ip route add default via 192.227.15.209


