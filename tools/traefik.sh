#!/bin/bash

function error {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
}

echo "Creating directories..."
sudo mkdir -p /docker/treafik/config || error "Failed to create traefik folder!"
echo "Creating a blank traefik config files"

sudo touch /docker/treafik/config/traefik.yml || error "Failed to create traefik route config!"
sudo touch /docker/treafik/config/config.yml || error "Failed to create traefik config!"
sudo touch /docker/treafik/config/acme.json || error "Failed to create traefik certificate storage!"

echo "Setup complete. You can now install the stack using the App Template."

