#!/bin/sh

# Start the Ollama server in the background
echo "[INFO] Starting Ollama server..."
ollama serve &

# Wait a few seconds to allow the server to become ready
sleep 5

# Run a test prompt using the Mistral model
echo "[INFO] Warm-up Mistral..."
curl -s -X POST http://localhost:11434/api/generate \
  -H 'Content-Type: application/json' \
  -d '{"model": "mistral", "prompt": "Hi", "stream": false}' > /dev/null

echo "[INFO] Warm-up LLaMA..."
curl -s -X POST http://localhost:11434/api/generate \
  -H 'Content-Type: application/json' \
  -d '{"model": "llama2", "prompt": "Hi", "stream": false}' > /dev/null

tail -f /dev/null