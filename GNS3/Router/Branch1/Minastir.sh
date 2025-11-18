#!/bin/bash
# Router Minastir - Branch 1

auto lo
iface lo inet loopback

# eth0 = Minastir ↔ Amonsul   (A7)
auto eth0
iface eth0 inet static
    address 192.227.15.214
    netmask 255.255.255.252

# eth1 = Minastir ↔ Amroth    (A6)
auto eth1
iface eth1 inet static
    address 192.227.15.209
    netmask 255.255.255.252

# eth2 = Minastir ↔ Anor      (A5)
auto eth2
iface eth2 inet static
    address 192.227.15.205
    netmask 255.255.255.252

# CLI Interface
#!/bin/bash
echo 1 > /proc/sys/net/ipv4/ip_forward

# ----------- INTERFACES -----------

ip addr flush dev eth0
ip addr add 192.227.15.214/30 dev eth0
ip link set eth0 up

ip addr flush dev eth1
ip addr add 192.227.15.209/30 dev eth1
ip link set eth1 up

ip addr flush dev eth2
ip addr add 192.227.15.205/30 dev eth2
ip link set eth2 up

# ----------- STATIC ROUTES -----------
# --- Routes via ANOR
ip route add 192.227.4.0/22 via 192.227.15.206

# --- Routes via AMROTH
ip route add 192.227.15.184/29 via 192.227.15.210
ip route add 192.227.15.0/26 via 192.227.15.210
ip route add 192.227.15.192/29 via 192.227.15.210

# --- Default route to AMONSUL
ip route add default via 192.227.15.213