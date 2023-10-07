#!/bin/bash
#

# Port is in the docker-compose.yaml file.
export USE_TAP_INSTEAD_TUN=false
export OVPN_SERVER_URL="udp://12.34.56.78:39998"
export OVPN_SERVER_SUBNET="10.0.0.0/8"

export USE_OWN_DNS=false
export DNS_SERVER="10.0.0.4"

export DYN_CLIENT_IP=false
export ROUTES=(
    "-p"  "route  12.34.56.0   255.255.255.0"
    "-p"  "route  10.0.0.0     255.0.0.0    "
)
