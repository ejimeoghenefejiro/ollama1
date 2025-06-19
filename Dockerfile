FROM ubuntu:20.04

# Install curl + Ollama
RUN apt-get update && apt-get install -y curl && \
    curl -fsSL https://ollama.com/install.sh | sh

# Preload the phi model
RUN ollama pull phi

# Expose Ollama’s API port
EXPOSE 11434

# Start Ollama API
CMD ["ollama", "serve"]
