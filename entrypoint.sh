#!/bin/sh
echo "Starting entrypoint script"
HOSTNAME=$(hostname)
echo "Hostname: $HOSTNAME"
export HOSTNAME
echo "Executing cAdvisor"
exec /usr/local/bin/cadvisor "$@"