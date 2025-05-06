FROM ollama/ollama:latest

# Install curl and jq for testing
RUN apt-get update && apt-get install -y curl jq

# Copy the shell script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Override default entrypoint
ENTRYPOINT []

# Run the script on container start
CMD ["/start.sh"]