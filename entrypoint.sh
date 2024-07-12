#!/bin/sh

# Capture hostname
HOSTNAME=$(hostname)

# Export the captured hostname
export HOSTNAME

# Execute the original entrypoint of cAdvisor
exec /usr/bin/cadvisor "$@"