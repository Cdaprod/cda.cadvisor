FROM gcr.io/cadvisor/cadvisor:latest

# Install hostname command
RUN apt-get update && apt-get install -y hostname

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Set execute permissions
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]