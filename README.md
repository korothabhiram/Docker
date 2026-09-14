# 🐳 Docker

## 📘 What is Docker?

Docker is an open-source platform that enables developers and system administrators to build, ship, and run applications in lightweight, portable **containers**. These containers package an application with everything it needs to run—code, runtime, libraries, and system tools—ensuring consistency across different environments.

---

## 🙋‍♂️ Who Should Use Docker?

- **Developers**: Simplify setup and eliminate "it works on my machine" problems.
- **DevOps Engineers**: Automate builds, deployments, and infrastructure.
- **Sysadmins**: Standardize environments and isolate apps securely.
- **QA Engineers**: Reproduce bug environments quickly and reliably.
- **Tech Learners**: Experiment with stacks like Node.js, Python, MySQL, etc., in isolated environments.

---

## 🎯 Why Use Docker?

- 🧳 Package once, run anywhere
- 🚀 Rapid deployment and scaling
- 🔁 Version-controlled infrastructure
- 🛠️ Easy CI/CD and testing pipelines
- 💡 Lightweight and fast

---
# 🐳 Top 50 Docker Commands Cheat Sheet

A handy, stylish list of the **most useful Docker commands** you'll use for containers, images, volumes, and networks. Perfect for beginners and pros alike!

---

## 📦 Container Management

| Command | Description |
|--------|-------------|
| `docker run <image>` | 🚀 Run a container from an image |
| `docker run -it <image>` | 🖥️ Interactive terminal access |
| `docker run -d <image>` | 🎯 Run container in background (detached) |
| `docker run --name mycontainer <image>` | 🏷️ Name your container |
| `docker ps` | 👀 List running containers |
| `docker ps -a` | 📋 List all containers (running + stopped) |
| `docker start <container>` | ▶️ Start a stopped container |
| `docker stop <container>` | ⏹️ Stop a running container |
| `docker restart <container>` | 🔁 Restart a container |
| `docker kill <container>` | ❌ Forcefully stop (kill) a container |
| `docker rm <container>` | 🧹 Remove a stopped container |
| `docker rm -f <container>` | 💣 Force remove (even if running) |
| `docker exec -it <container> bash` | 💻 Access shell inside container |
| `docker attach <container>` | 🔌 Attach to running container STDIN |
| `docker logs <container>` | 📜 View container logs |
| `docker logs -f <container>` | 📡 Follow real-time logs |

---

## 🖼️ Image Management

| Command | Description |
|--------|-------------|
| `docker images` | 🖼️ List all local images |
| `docker pull <image>` | 📥 Download an image from Docker Hub |
| `docker push <image>` | 📤 Upload image to Docker Hub |
| `docker build -t <name> .` | 🏗️ Build an image from a Dockerfile |
| `docker rmi <image>` | 🗑️ Remove image |
| `docker tag <image> <repo:tag>` | 🏷️ Tag an image |
| `docker history <image>` | 🕰️ Show image layers history |
| `docker inspect <image>` | 🔍 Detailed info about image |

---

## 🛠️ Dockerfile & Build

| Command | Description |
|--------|-------------|
| `docker build .` | 🔨 Build from current directory |
| `docker build -f Dockerfile.dev .` | 🧪 Specify a custom Dockerfile |
| `docker build --no-cache .` | 🚫 Avoid using cache while building |

---

## 🕸️ Network Commands

| Command | Description |
|--------|-------------|
| `docker network ls` | 🌐 List Docker networks |
| `docker network create <name>` | 🛠️ Create a new network |
| `docker network inspect <name>` | 🔍 Inspect network details |
| `docker network connect <net> <container>` | 🔗 Connect container to network |
| `docker network disconnect <net> <container>` | 🔌 Disconnect from network |

---

## 💾 Volume Commands

| Command | Description |
|--------|-------------|
| `docker volume ls` | 📂 List all volumes |
| `docker volume create <name>` | 🆕 Create a new volume |
| `docker volume inspect <name>` | 🔍 Inspect volume details |
| `docker volume rm <name>` | 🧹 Remove a volume |
| `docker volume prune` | 🧼 Remove unused volumes |

---

## 🔄 System Maintenance

| Command | Description |
|--------|-------------|
| `docker system df` | 📊 Show disk usage |
| `docker system prune` | 🧽 Remove unused data |
| `docker system prune -a` | 🧹 Remove all unused images, containers, volumes |
| `docker stats` | 📈 Container resource usage |
| `docker info` | 🧠 Show system-wide info |

---

## 🔐 Login & Registry

| Command | Description |
|--------|-------------|
| `docker login` | 🔐 Authenticate to Docker Hub |
| `docker logout` | 🚪 Log out of Docker Hub |
| `docker search <term>` | 🔍 Search for images on Docker Hub |

---

## 📁 Save & Load

| Command | Description |
|--------|-------------|
| `docker save -o image.tar <image>` | 💾 Save image as tar file |
| `docker load -i image.tar` | 📂 Load image from tar file |
| `docker export <container>` | 📦 Export container filesystem |
| `docker import <file>` | 📥 Import a container as image |

---

## 🚀 Compose

| Command | Description |
|--------|-------------|
| `docker-compose up` | ⬆️ Start services from `docker-compose.yml` |
| `docker-compose down` | ⬇️ Stop and remove services |
| `docker-compose build` | 🔧 Build or rebuild services |
| `docker-compose logs -f` | 📺 Follow logs from all services |

---

## 🧠 Tip

💡 Use `--help` with any Docker command to learn more, e.g.:

```bash
docker run --help
```

---

> ✅ Keep this README as a reference for your Docker journey. Contributions welcome!  
> ⭐ Star this repo if you found it helpful!
