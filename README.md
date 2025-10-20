Node.js CI/CD Demo

A simple Node.js app with CI/CD pipeline using GitHub Actions and Docker.

Features

Single-line Node.js app using Express.

Dockerized with optimized node:18-slim image.

CI/CD pipeline builds and pushes Docker image to Docker Hub (or GHCR).

.dockerignore used to reduce image size.

Tests are run automatically if defined in package.json.

Project Structure
nodejs-cicd-demo/
├─ Dockerfile
├─ package.json
├─ package-lock.json
├─ app.js
├─ .dockerignore
├─ .github/workflows/ci-cd.yml

Setup & Usage
1. Clone repository
git clone <repo-url>
cd nodejs-cicd-demo

2. Build Docker image locally
docker build -t nodejs-demo-app .

3. Run locally
docker run -p 3000:3000 nodejs-demo-app


Visit http://localhost:3000 to see the app.

4. CI/CD

Workflow triggers on push to main branch.

Builds and pushes Docker image to Docker Hub or GitHub Container Registry.

Notes

.dockerignore excludes node_modules, git files, and logs.

Docker Hub may have temporary outages; use GHCR as alternative if needed.

