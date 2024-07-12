#!/bin/bash

# Capture hostname and other important information
HOSTNAME=$(hostname)

# Export the captured information as environment variables
export HOSTNAME

# Execute the original entrypoint of cAdvisor
exec /usr/bin/cadvisor "$@"