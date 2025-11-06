# Dockerfile
# Pin n8n version for reproducibility (update as needed)
FROM n8nio/n8n:latest

USER root

# Install amazon-sp-api package globally
# Use --no-audit and --no-fund for faster builds and reduced output
RUN npm install -g --no-audit --no-fund amazon-sp-api==0.8.5

# Allow amazon-sp-api to be required in n8n Function/Code nodes
# Remove this line if you only need it in command-line scripts
ENV N8N_FUNCTION_ALLOW_EXTERNAL=amazon-sp-api

USER node