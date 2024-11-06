# jan/02/1970 00:19:23 by RouterOS 6.48.6
# software id = PQMT-7BFQ
#
# model = RB941-2nD
# serial number = HDJ08PVRQPJ
/interface wireless
set [ find default-name=wlan1 ] ssid=MikroTik
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=dhcp_pool0 ranges=192.168.50.2-192.168.50.254
add name=dhcp_pool1 ranges=192.168.70.2-192.168.70.254
/ip dhcp-server
add address-pool=dhcp_pool1 disabled=no interface=ether3 name=dhcp1
/ip address
add address=30.30.30.2/24 interface=ether2 network=30.30.30.0
add address=192.168.70.1/24 interface=ether3 network=192.168.70.0
add address=16.16.16.2/24 interface=ether4 network=16.16.16.0
/ip dhcp-server network
add address=192.168.50.0/24 gateway=192.168.50.1
add address=192.168.70.0/24 gateway=192.168.70.1
/routing rip interface
add
/routing rip network
add network=30.30.30.0/24
add network=192.168.70.0/24
add network=16.16.16.0/24
/system identity
set name=RouterOS