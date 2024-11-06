# Konfigurasi IP dan RIP pada Router KBJ

Router> enable
Router# configure terminal
Router(config)# hostname KBJ

! Interface yang terhubung ke switch
KBJ(config)# interface gigabitEthernet 0/0
KBJ(config-if)# ip address 192.168.1.1 255.255.255.0
KBJ(config-if)# no shutdown

! Interface yang terhubung ke CR
KBJ(config)# interface gigabitEthernet 0/1
KBJ(config-if)# ip address 192.168.2.1 255.255.255.0
KBJ(config-if)# no shutdown

! Aktifkan RIP
KBJ(config)# router rip
KBJ(config-router)# version 2
KBJ(config-router)# network 192.168.1.0
KBJ(config-router)# network 192.168.2.0
KBJ(config-router)# exit

# Konfigurasi IP dan RIP pada Router CR

Router> enable
Router# configure terminal
Router(config)# hostname CR

! Interface yang terhubung ke KBJ
CR(config)# interface gigabitEthernet 0/0
CR(config-if)# ip address 192.168.2.2 255.255.255.0
CR(config-if)# no shutdown

! Interface yang terhubung ke KHI
CR(config)# interface gigabitEthernet 0/1
CR(config-if)# ip address 192.168.3.1 255.255.255.0
CR(config-if)# no shutdown

! Aktifkan RIP
CR(config)# router rip
CR(config-router)# version 2
CR(config-router)# network 192.168.2.0
CR(config-router)# network 192.168.3.0
CR(config-router)# exit

# Konfigurasi IP dan RIP pada Router KHI

Router> enable
Router# configure terminal
Router(config)# hostname KHI

! Interface yang terhubung ke switch
KHI(config)# interface gigabitEthernet 0/0
KHI(config-if)# ip address 192.168.4.1 255.255.255.0
KHI(config-if)# no shutdown

! Interface yang terhubung ke CR
KHI(config)# interface gigabitEthernet 0/1
KHI(config-if)# ip address 192.168.3.2 255.255.255.0
KHI(config-if)# no shutdown

! Aktifkan RIP
KHI(config)# router rip
KHI(config-router)# version 2
KHI(config-router)# network 192.168.3.0
KHI(config-router)# network 192.168.4.0
KHI(config-router)# exit

# Konfigurasi IP Statis pada PC

IP Address: 192.168.1.2
Subnet Mask: 255.255.255.0
Default Gateway: 192.168.1.1

IP Address: 192.168.4.2
Subnet Mask: 255.255.255.0
Default Gateway: 192.168.4.1
 