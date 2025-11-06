# Dockerfile
# Pin n8n version for reproducibility (update as needed)
FROM n8nio/n8n:latest

USER root

# Install amazon-sp-api package globally
# Use --no-audit and --no-fund for faster builds and reduced output
RUN npm install -g --no-audit --no-fund amazon-sp-api@1.1.6 aws4 axios

USER node