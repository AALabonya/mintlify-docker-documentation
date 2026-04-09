# Mintlify Docker Documentation Template 🚀

A streamlined, robust template to build and run [Mintlify](https://mintlify.com/) documentation locally using Docker. This setup ensures a consistent development environment across your team without the need to install Node.js or Mintlify CLI directly on your host machine.

## ✨ Features

- **Zero Local Dependencies:** Run Mintlify entirely inside Docker.
- **Optimized Docker Image:** Built on `node:20-alpine` with `libc6-compat` for maximum stability and speed.
- **Flawless Hot-Reloading:** Specifically configured with `WATCHPACK_POLLING` and `CHOKIDAR_USEPOLLING` to guarantee seamless live-reloading, especially on Windows environments.
- **Clean Architecture:** Isolated `node_modules` volume prevents OS architecture conflicts between your host machine and the Docker container.
- **Modern UI Components:** Includes a pre-configured `index.mdx` using Mintlify's modern `<CardGroup>` layouts.

## 🛠 Prerequisites

Make sure you have the following installed on your machine:
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (or Docker Engine)
- [Docker Compose](https://docs.docker.com/compose/install/)

## 🚀 Quick Start

1. **Clone the repository**:
   ```bash
   git clone https://github.com/AALabonya/mintlify-docker-documentation.git
   cd mintlify-docker-documentation
   ```

2. **Start the development server**:
   Run the following command to build the image and start the container in detached mode:
   ```bash
   docker-compose up -d --build
   ```

3. **View the documentation**:
   Open your favorite browser and navigate to:  
   👉 **[http://localhost:3000](http://localhost:3000)**

   *Note: Any changes you make to the `.mdx` files or `mint.json` will automatically trigger a hot-reload in the browser!*

## 🛑 Stopping the Server

To cleanly stop the development server and remove the container, run:
```bash
docker-compose down
```

## 📁 Project Structure

```text
mintlify-docker-documentation/
├── docker-compose.yml   # Docker Compose config with volume mappings and polling
├── Dockerfile           # Source instructions for the Mintlify CLI image
├── .dockerignore        # Excluded items to ensure clean, fast Docker builds
├── mint.json            # Global configuration (navigation, branding, colors)
├── index.mdx            # Main landing page featuring CardGroup components
└── README.md            # Project documentation (You are here)
```

## 🎨 Customizing Your Docs

- **Branding & Structure:** Edit `mint.json` to configure navigation links, change theme colors (`primary`, `light`, `dark`), or update the project name.
- **Content:** Modify `index.mdx` or add new `.mdx` files to expand your documentation.
- For complete details on MDX components and features, check out the [official Mintlify Docs](https://mintlify.com/docs).
