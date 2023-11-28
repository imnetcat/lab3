groupadd quagga
useradd -g quagga -s /bin/false quagga

mkdir /etc/quagga
mkdir /var/state/quagga
touch /var/log/zebra.log
touch /var/log/ospfd.log
touch /var/log/bgpd.log
chown quagga:quagga /etc/quagga
chown quagga:quagga /var/state/quagga

./configure --enable-user=quagga --enable-group=quagga --enable-vty-group=quagga \
 --prefix=/usr --sysconfdir=/etc/quagga -localstatedir=/var/state/quagga
 make
 make install
 ldconfig
