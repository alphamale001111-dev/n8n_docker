FROM n8nio/n8n:latest

USER root

# Install pandoc via binary (lighter than apt)
RUN curl -L https://github.com/jgm/pandoc/releases/latest/download/pandoc-linux-amd64.tar.gz \
    | tar xz --strip-components=1 -C /usr/local

EXPOSE 10000