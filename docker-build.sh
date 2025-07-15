#!/bin/bash
set -e

# Define Docker Compose file and cache option
COMPOSE_FILE_NAME="docker-compose.yml"
CACHE="--no-cache"
# Uncomment the next line to enable no-cache option
# CACHE="--no-cache"

# Define the base Docker Compose command
DCS="docker-compose -f ${COMPOSE_FILE_NAME}"

# Function to build and start services
build() {
    echo "Building services..."
    if ! $DCS build ${CACHE}; then
        echo "Error: Failed to build services"
        exit 1
    fi
    echo "rustdesk-api image build successfully"
}

# Execute build function
build