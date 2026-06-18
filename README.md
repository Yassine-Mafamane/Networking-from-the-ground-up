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
| [Topology 1 - Basic Routing](./Topology-1-Basic-Routing/) | IP addressing, subnets, static routing, default gateway |
| More coming soon... | |

## Project structure

```
.
├── Makefile
├── docker/
│   ├── router/     # FRR router image (zebra, bgpd, ospfd, isisd)
│   └── host/       # minimal Alpine host image
└── Topology-1-Basic-Routing/
```
