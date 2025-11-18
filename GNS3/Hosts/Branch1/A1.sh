#!/bin/bash
# Host Beacon - A1 (192.227.4.0/22)

auto lo
iface lo inet loopback

auto eth0
iface eth0 inet static
    address 192.227.4.2
    netmask 255.255.252.0
    gateway 192.227.4.1

# CLI Interface
#!/bin/bash
ip addr flush dev eth0
ip addr add 192.227.4.2/22 dev eth0
ip link set eth0 up
ip route add default via 192.227.4.1
echo "nameserver 192.168.122.1" > /etc/resolv.conf
echo "[Beacon ready]"

#!/bin/bash
# Host Silmarlis - A1

auto lo
iface lo inet loopback

auto eth0
iface eth0 inet static
    address 192.227.4.3
    netmask 255.255.252.0
    gateway 192.227.4.1

# CLI Interface
ip addr flush dev eth0
ip addr add 192.227.4.3/22 dev eth0
ip link set eth0 up
ip route add default via 192.227.4.1
echo "nameserver 192.168.122.1" > /etc/resolv.conf
echo "[Silmarlis ready]"


