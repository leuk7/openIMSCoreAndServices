#!/bin/bash

echo "-- Files configuration --"
echo ""
echo "-- Writting in resolv.conf"
cp /etc/resolv.conf.ims /etc/resolv.conf
echo "-- End of writting in resolv.conf"
echo ""
echo "-- Writting in hosts --"
cp /etc/hosts.ims /etc/hosts
echo "End of writting in hosts --"
echo ""
echo"-- Restart bind9 server --"
/etc/init.d/bind9 restart
export JAVA_HOME="/usr/lib/jvm/java-1.7.0-openjdk-i386"
export PATH=$JAVA_HOME/bin:$PATH
mkdir /var/run/opensips
chmod 777 /var/run/opensips
echo""
echo"-- Starting Server x-cscf and FHoSS"
gnome-terminal \
--tab -e "bash -c 'cd /opt/OpenIMSCore && sudo ./pcscf.sh';bash" \
--tab -e "bash -c 'cd /opt/OpenIMSCore && sudo ./icscf.sh';bash" \
--tab -e "bash -c 'cd /opt/OpenIMSCore && sudo ./scscf.sh';bash" \
--tab -e "bash -c 'cd /opt/OpenIMSCore/FHoSS/deploy && ./startup.sh';bash"

