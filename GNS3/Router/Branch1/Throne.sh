#!/bin/bash
# Router Throne

auto lo
iface lo inet loopback

auto eth0
iface eth0 inet static
    address 192.227.15.187
    netmask 255.255.255.248

auto eth1
iface eth1 inet static
    address 192.227.15.193
    netmask 255.255.255.248

# CLI Interface
#!/bin/bash
echo 1 > /proc/sys/net/ipv4/ip_forward

# --- Interfaces ---
ip addr flush dev eth0
ip addr add 192.227.15.187/29 dev eth0
ip link set eth0 up

ip addr flush dev eth1
ip addr add 192.227.15.193/29 dev eth1
ip link set eth1 up

# --- Routes ---

# A3 LAN (Erendis/Elrond) via Morgoth
ip route add 192.227.15.0/26 via 192.227.15.186

# A1 Subnet (Beacon/Silmarlis) via Morgoth → Amroth → Minastir → Anor
# cukup default via Morgoth
ip route add default via 192.227.15.186

