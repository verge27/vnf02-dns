#!/bin/sh

echo "[VNF02-DNS] Starting Tor..."
tor -f /etc/tor/torrc &

sleep 5

echo "[VNF02-DNS] Starting dnsmasq (DNS over Tor)..."
dnsmasq -k --conf-file=/etc/dnsmasq.conf
