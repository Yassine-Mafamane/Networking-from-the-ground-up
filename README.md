# Networking from the ground up

A progressive series of GNS3 topologies exploring how networking works,
from basic IP routing to VXLAN with BGP EVPN.

Each topology builds on the previous one, with configuration files and
explanations for every device.

## Requirements

- [GNS3](https://www.gns3.com/)
- [Docker](https://www.docker.com/)

## Getting started

Build the Docker images first:

```bash
make
```

Then open GNS3 and import the `.gns3project` file from the topology folder
you want to explore via `File → Import portable project`.

## Topologies

| Topology | Concepts |
|----------|----------|
| [Topology 1 - Basic Routing](./Topology-1-Basic-Routing/) | IP addressing, subnets, static routing, default gateway, TTL |
| [Topology 2 - L2 Switching](./Topology-2-L2-Switching/) | MAC addresses, CAM table, unknown unicast flooding, ARP |
| [Topology 3 - Routing and Switching](./Topology-3-Routing-and-Switching/) | Cascading switches, MAC learning across switches, inter-network routing |
| [Topology 4 - VLANs](./Topology-4-VLANs/) | VLAN isolation, access ports, trunk ports, 802.1Q tagging, router on a stick |
| [Topology 5 - OSPF](./Topology-5-OSPF/) | Dynamic routing, link-state protocol, OSPF areas, ABRs, SPF algorithm, LSAs |
| [Topology 6 - Static VXLAN](./Topology-6-Static-VXLAN/) | Overlay vs underlay, VTEP, VNI, L2 over L3, Linux bridge, static unicast tunnel |
| Topology 7 - BGP EVPN |  |

## Project structure

```
.
├── Makefile
├── docker/
│   ├── router/     # FRR router image (zebra, bgpd, ospfd, isisd)
│   └── host/       # minimal Alpine host image
└── Topology-1-Basic-Routing/
```
