#!/bin/bash
# =======================================================
# Router Amonsul - CORE Router (Routing Version: modul)
# =======================================================

auto lo
iface lo inet loopback

# NAT DHCP (jika pakai cloud)
auto eth0
iface eth0 inet dhcp

# A7 – Minastir
auto eth1
iface eth1 inet static
    address 192.227.15.213
    netmask 255.255.255.252

# A18 – Eregion
auto eth2
iface eth2 inet static
    address 192.227.15.233
    netmask 255.255.255.252

# A23 – Fornost
auto eth3
iface eth3 inet static
    address 192.227.15.201
    netmask 255.255.255.252

# CLI Interface
# Enable forwarding
up echo 1 > /proc/sys/net/ipv4/ip_forward

# ---------------------------
# Clean & assign interfaces
# ---------------------------

up ip addr flush dev eth1
up ip addr add 192.227.15.213/30 dev eth1
up ip link set eth1 up

up ip addr flush dev eth2
up ip addr add 192.227.15.233/30 dev eth2
up ip link set eth2 up

up ip addr flush dev eth3
up ip addr add 192.227.15.201/30 dev eth3
up ip link set eth3 up

# ---------------------------
# STATIC ROUTES
# ---------------------------

# --- ROUTES VIA MINASTIR (192.227.15.214) ---
up ip route add 192.227.4.0/22      via 192.227.15.214     # A1 Beacon / Silmarils
up ip route add 192.227.15.192/29   via 192.227.15.214     # A2 Erebor
up ip route add 192.227.15.184/29   via 192.227.15.214     # A4 Morgoth / Throne
up ip route add 192.227.15.0/26     via 192.227.15.214     # A3 Erendis / Elrond
up ip route add 192.227.15.204/30   via 192.227.15.214     # A5 Minastir–Anor
up ip route add 192.227.15.208/30   via 192.227.15.214     # A6 Minastir–Amroth

# --- ROUTES VIA EREGION (192.227.15.234) ---
up ip route add 192.227.14.0/25     via 192.227.15.234     # A13 Mirkwood / Morgul
up ip route add 192.227.14.128/25   via 192.227.15.234     # A12 Palantir / Edhil
up ip route add 192.227.10.0/23     via 192.227.15.234     # A8 Thranduil / Gothmog / Balrog
up ip route add 192.227.8.0/23      via 192.227.15.234     # A9 Melkor / Khazad
up ip route add 192.227.0.0/22      via 192.227.15.234     # A10 Arthedain / Mirdain

# --- ROUTES VIA FORNOST (192.227.15.202) ---
up ip route add 192.227.12.0/23     via 192.227.15.202     # A21 Shadow / Lindon / Anarion
up ip route add 192.227.15.64/26    via 192.227.15.202     # A19 Imrahil / Gwaith / Utumno
up ip route add 192.227.15.128/27   via 192.227.15.202     # A20 Doriath / Arnor
up ip route add 192.227.15.176/29   via 192.227.15.202     # A22 Valinor / Valmar

