# 🧠 Local LLMs with Docker Compose (Ollama + Jupyter)

This project sets up a local environment for working with large language models like **Mistral** and **LLaMA 2** using **Ollama** and **Jupyter Notebook**, powered by Docker Compose.

---

## 🚀 1. Build the Docker Images

Run the following command in your terminal:

    docker-compose build

This will build all services defined in `docker-compose.yml` — including Ollama and Jupyter Notebook.

---

## ✅ 2. Check That the Images Were Built

To confirm that the images were created:

    docker images

You should see entries like:

- ollama_ollama
- jupyter/scipy-notebook

---

## ▶️ 3. Start the Containers

To start the containers in the foreground:

    docker-compose up

Or in the background (detached mode):

    docker-compose up -d

---

## 🌐 Services

- Local LLM API (Ollama):     http://localhost:11434  
- Jupyter Notebook:           http://localhost:8888/?token=123456

---

## 📦 Download and Start the Models

Once the containers are running, trigger Ollama to download and prepare the models:

### 🔹 Mistral

    docker exec -it ollama ollama run mistral

**Details:**
- Model: Mistral 7B Instruct
- Size: 7 billion parameters
- Publisher: Mistral AI
- License: Apache 2.0
- Highlights:
  - Optimized for fast local inference
  - Works well on CPU or GPU with low memory
  - Excellent general-purpose instruction following

---

### 🔹 LLaMA 2

    docker exec -it ollama ollama run llama2

**Details:**
- Model: LLaMA 2 7B Chat
- Size: 7 billion parameters
- Publisher: Meta AI
- License: Custom (open weights with usage restrictions)
- Highlights:
  - Trained with extensive dialogue data
  - Stronger long-form reasoning
  - Best used in chat or assistant-style tasks

---

Enjoy exploring local language models!
