# VNF02 – DNS-over-Tor

> A lightweight, dockerized DNS tunneling node for privacy-preserving edge infrastructure.

This VNF container tunnels DNS queries over the Tor network using `dnsmasq` and `tor`, both running inside a minimalist Alpine Linux base. It's designed for low-resource environments like Raspberry Pis, edge nodes, or meshnet simulations—anywhere DNS privacy matters.

---

## 🔐 Why DNS-over-Tor?

Most devices leak metadata through DNS—even when using a VPN. This container routes all DNS queries through Tor, anonymizing resolution paths and removing trust from local resolvers or ISPs.

---

## ⚙️ Features

- 📦 **Self-contained**: Runs Tor and `dnsmasq` internally—no external dependencies.
- 🧠 **Alpine-based**: Lightweight, <35MB image size.
- 🔄 **Simple config**: Easy to override or extend.
- 🧱 **Composable**: Can be chained with other VNFs (e.g. WireGuard, relay nodes).

---

## 🚀 Usage

### Run via Docker Compose

```bash
docker-compose up vnf02-dns
