#!/bin/sh

/usr/lib/frr/zebra -d -F traditional -A 127.0.0.1
/usr/lib/frr/bgpd -d -F traditional -A 127.0.0.1
/usr/lib/frr/ospfd -d -F traditional -A 127.0.0.1
/usr/lib/frr/isisd -d -F traditional -A 127.0.0.1

sleep 2

if [ -x /tmp/ospf-init.sh ]; then
    /tmp/ospf-init.sh
fi

tail -f /dev/null