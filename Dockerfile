FROM google/cadvisor:latest

# Ensure the architecture is specified
ARG TARGETARCH
RUN echo "Building for architecture: $TARGETARCH"

# Install hostname if necessary (optional, cAdvisor should already include necessary utilities)
RUN apt-get update && apt-get install -y hostname

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Set execute permissions
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]