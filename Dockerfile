FROM n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        pandoc \
        fonts-dejavu-core && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# stay as root (Render-friendly)
CMD ["sh", "-c", "n8n start --host=0.0.0.0 --port=${PORT:-10000}"]