# Use explicit LTS version of Node on Alpine for a smaller, secure footprint
FROM node:20-alpine

# Many CLI tools built via node use C++ bindings / binaries that require libc6-compat on alpine
RUN apk add --no-cache libc6-compat

# Set the working directory inside the container
WORKDIR /app

# Install Mintlify CLI globally
RUN npm install -g mintlify

# Expose the port the development server uses
EXPOSE 3000

# Copy the rest of the project files
# Note: When using docker-compose, this is shadowed by the volume mount,
# but included here so the Dockerfile can still build a standalone image.
COPY . .

# Run the mintlify dev server, binding to 0.0.0.0 to allow external access
CMD ["mintlify", "dev", "--port", "3000", "--host", "0.0.0.0"]
