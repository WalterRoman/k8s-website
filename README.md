# k8s-website

A demo website deployed on Kubernetes (k3s) running on Fedora Linux 42.
Built and coded on macOS, deployed via GitHub Actions CI/CD pipeline.

## Stack
- **Website**: HTML, CSS, JavaScript
- **Web Server**: Nginx (Alpine)
- **Container**: Docker
- **Orchestration**: k3s (Kubernetes)
- **CI/CD**: GitHub Actions
- **Registry**: GitHub Container Registry (ghcr.io)

## How it works
1. Code is written on macOS
2. Pushed to GitHub
3. GitHub Actions builds the Docker image automatically
4. Image is pushed to GitHub Container Registry
5. Fedora server pulls the new image and redeploys

## View the website
http://192.168.0.15:30080