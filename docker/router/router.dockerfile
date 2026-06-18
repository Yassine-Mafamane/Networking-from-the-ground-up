FROM alpine:latest

RUN apk add --no-cache frr busybox tini

RUN printf '#!/bin/sh\n\
/usr/lib/frr/zebra -d -F traditional -A 127.0.0.1\n\
/usr/lib/frr/bgpd -d -F traditional -A 127.0.0.1\n\
/usr/lib/frr/ospfd -d -F traditional -A 127.0.0.1\n\
/usr/lib/frr/isisd -d -F traditional -A 127.0.0.1\n\
tail -f /dev/null\n' > /init.sh && chmod +x /init.sh

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/init.sh"]
