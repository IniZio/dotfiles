#!/bin/bash
set -e

# Prompt for Hostname
read -p "Enter Devbox Hostname (e.g., devbox-01): " CONTAINER_NAME

if [ -z "$CONTAINER_NAME" ]; then
    echo "Error: Hostname cannot be empty."
    exit 1
fi

echo ">> Preparing host volume..."
mkdir -p "/home/newman/magic/$CONTAINER_NAME"

echo ">> Running Ansible Playbook..."
ansible-playbook /home/newman/ansible/setup-devbox.yml \
    --ask-become-pass \
    -e "target_container=$CONTAINER_NAME"

echo ">> Setup Complete!"
echo ">> Initiating Tailscale Login (Follow the link below)..."
lxc exec "$CONTAINER_NAME" -- tailscale up

echo ">> Devbox '$CONTAINER_NAME' is ready."
