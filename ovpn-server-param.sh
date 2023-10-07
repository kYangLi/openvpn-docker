# Port is in the docker-compose.yaml file.
# If your are using the OVPN 3.0, this must be set to false, since the 3.0 is no longer support TAP dev for now.
export USE_TAP_INSTEAD_TUN=false

# Your public [IP/Domain]:[Port] of the server.
export OVPN_SERVER_URL="udp://12.34.56.78:39998"

# The OpenVPN subnet format.
export OVPN_SERVER_SUBNET="10.0.0.0/8"

# Use the self-defined DNS or not, usually be false.
export USE_OWN_DNS=false

# Only useful when the `USE_OWN_DNS` is `ture`.
export DNS_SERVER="10.0.0.4"

# Use static IP for the client users or not.
export DYN_CLIENT_IP=false

# The route rules using iptables masquerade on server.
export ROUTES=(
    "-p"  "route  12.34.56.0   255.255.255.0"
    "-p"  "route  10.0.0.0     255.0.0.0    "
)

