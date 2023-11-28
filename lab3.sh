echo "deb http://ftp.uk.debian.org/debian/ jessie main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://ftp.uk.debian.org/debian/ jessie main contrib non-free" >> /etc/apt/sources.list
echo "deb http://ftp.uk.debian.org/debian/ jessie-updates main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://ftp.uk.debian.org/debian/ jessie-updates main contrib non-free" >> /etc/apt/sources.list
echo "deb http://security.debian.org/ jessie/updates main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://security.debian.org/ jessie/updates main contrib non-free" >> /etc/apt/sources.list
apt-get update
apt-get upgrade
apt-get install quagga=0.99.23.1-1+deb8u5
cd /etc/quagga
touch /etc/quagga/bgpd.conf
touch /etc/quagga/isisd.conf
touch /etc/quagga/ospf6d.conf 
touch /etc/quagga/ospfd.conf
touch /etc/quagga/pimd.conf
touch /etc/quagga/ripd.conf
touch /etc/quagga/ripngd.conf
touch /etc/quagga/vtysh.conf
touch /etc/quagga/zebra.conf
chown quagga:quagga /etc/quagga/babeld.conf && chmod 640 /etc/quagga/babeld.conf 
chown quagga:quagga /etc/quagga/bgpd.conf && chmod 640 /etc/quagga/bgpd.conf 
chown quagga:quagga /etc/quagga/isisd.conf && chmod 640 /etc/quagga/isisd.conf 
chown quagga:quagga /etc/quagga/ospf6d.conf && chmod 640 /etc/quagga/ospf6d.conf 
chown quagga:quagga /etc/quagga/ospfd.conf && chmod 640 /etc/quagga/ospfd.conf 
chown quagga:quagga /etc/quagga/pimd.conf && chmod 640 /etc/quagga/pimd.conf 
chown quagga:quagga /etc/quagga/ripd.conf && chmod 640 /etc/quagga/ripd.conf 
chown quagga:quagga /etc/quagga/ripngd.conf && chmod 640 /etc/quagga/ripngd.conf 
chown quagga:quaggavty /etc/quagga/vtysh.conf && chmod 660 /etc/quagga/vtysh.conf 
chown quagga:quagga /etc/quagga/zebra.conf && chmod 640 /etc/quagga/zebra.conf 
sed -i 's/ospfd=no/ospfd=yes/g' daemon
service quagga stop
service quagga start
