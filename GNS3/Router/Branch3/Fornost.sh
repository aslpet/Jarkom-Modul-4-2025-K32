#!/bin/bash
# Router Fornost - Branch 3 (FIXED)

auto eth0
iface eth0 inet static
    address 192.227.15.202
    netmask 255.255.255.252

auto eth1
iface eth1 inet static
    address 192.227.15.177
    netmask 255.255.255.248

# --- CLI Interface (Runtime) ---
#!/bin/bash
up echo 1 > /proc/sys/net/ipv4/ip_forward

# Up Interface eth0
up ip addr flush dev eth0
up ip addr add 192.227.15.202/30 dev eth0
up ip link set eth0 up

# Up Interface eth1 (Gateway untuk A22)
up ip addr flush dev eth1
up ip addr add 192.227.15.177/29 dev eth1
up ip link set eth1 up

# --- ROUTING ---

# 1. Route ke Client di bawah VALMAR (A19 & A20)
up ip route add 192.227.15.64/26 via 192.227.15.178
up ip route add 192.227.15.128/27 via 192.227.15.178

# 2. Route ke Client di bawah VALINOR (A21)
up ip route add 192.227.12.0/23 via 192.227.15.179

# 3. Default Route ke Internet (Amonsul)
up ip route add default via 192.227.15.201