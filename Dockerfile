FROM gcr.io/cadvisor/cadvisor:latest

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Set execute permissions
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]