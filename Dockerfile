# Use the latest Ubuntu image
FROM ubuntu:latest

# Prevent prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install basic tools (curl, git, etc.)
RUN apt-get update && apt-get install -y \
    curl \
    git \
    vim \
    net-tools \
    && rm -rf /var/lib/apt/lists/*

# Keep the container running (otherwise it will start and immediately close)
CMD ["tail", "-f", "/dev/null"]
