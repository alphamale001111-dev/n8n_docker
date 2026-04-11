FROM n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends pandoc && \
    apt-get clean

CMD ["sh", "-c", "n8n start --host=0.0.0.0 --port=${PORT:-10000}"]