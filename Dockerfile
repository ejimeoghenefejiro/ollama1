FROM ubuntu:20.04

# Install curl and Ollama
RUN apt-get update && apt-get install -y curl && \
    curl -fsSL https://ollama.com/install.sh | sh

# Expose Ollama API port
EXPOSE 11434

# Start Ollama server
CMD ["ollama", "serve"]
