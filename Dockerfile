FROM n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        pandoc \
        fonts-dejavu-core && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 10000