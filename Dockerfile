FROM n8nio/n8n:latest-debian

USER root

# Use archive.debian.org for EOL Buster
RUN sed -i 's|http://deb.debian.org/debian|http://archive.debian.org/debian|g' /etc/apt/sources.list && \
    echo 'Acquire::Check-Valid-Until "false";' > /etc/apt/apt.conf.d/99no-check-valid-until && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        pandoc \
        curl \
        ca-certificates \
        fonts-dejavu-core \
        libc6-dev \
        libgmp-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*