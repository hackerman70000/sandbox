#!/bin/bash
if [ -z "$TAILSCALE_AUTHKEY" ]; then
    echo "[tailscale] No TAILSCALE_AUTHKEY set, skipping"
    exit 0
fi

sudo tailscaled --tun=userspace-networking &
sleep 3
sudo tailscale up --ssh --authkey="$TAILSCALE_AUTHKEY"
