FROM python:3.10-slim

# Install git
RUN apt-get update && apt-get install -y git

# Copy everything into the container
COPY . /app
WORKDIR /app

# Ensure shell scripts are executable
RUN chmod +x entrypoint.sh update_readme.sh

# Set entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]
