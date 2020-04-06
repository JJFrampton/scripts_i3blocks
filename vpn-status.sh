#!/usr/bin/env bash

vpn_reachable=$(systemctl status vpn | tail -n 1 | grep -q unreachable && echo "DISCONNECTED" || echo "connected")
vpn_status=$(systemctl status vpn | awk '/Active/ { print $2 }')
echo "VPN $vpn_status, $vpn_reachable"
