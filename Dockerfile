# ── DOCKERFILE ──
# A Dockerfile is a recipe that tells Docker how to build a container image.
# Each line is an instruction. Docker reads them top to bottom.

# FROM — sets the base image we start with
# nginx:alpine means we use the official Nginx web server
# built on Alpine Linux (a very small, lightweight Linux distro ~5MB)
# Nginx will serve our HTML/CSS/JS files to the browser
FROM nginx:alpine

# LABEL — adds metadata/info to the image (optional but good practice)
# This is like a name tag on the container — who made it, what it is
LABEL maintainer="Walter"
LABEL description="K8s test website running on Nginx"
LABEL version="1.0"

# RUN — executes a command inside the container while building
# This removes the default Nginx welcome page so ours shows instead
RUN rm -rf /usr/share/nginx/html/*
# rm = remove
# -rf = recursive (folders too) + force (no confirmation prompt)
# /usr/share/nginx/html/ = the folder Nginx serves files from by default

# COPY — copies files FROM your Mac INTO the container image
# First argument: source path on your Mac (website/ folder)
# Second argument: destination path inside the container
COPY website/ /usr/share/nginx/html/
# This puts our index.html, style.css, and app.js
# into the folder Nginx will serve to browsers

# EXPOSE — documents which port the container listens on
# Port 80 is the standard HTTP port
# This doesn't actually open the port — it's documentation for Kubernetes
EXPOSE 80

# CMD — the command that runs when the container starts
# This starts the Nginx web server in the foreground
# "daemon off" means Nginx stays running in the terminal (required for Docker)
CMD ["nginx", "-g", "daemon off;"]