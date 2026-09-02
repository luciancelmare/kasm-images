#!/usr/bin/env bash
set -ex

# Install  Starship
wget https://starship.rs/install.sh && chmod +x install.sh && ./install.sh -y
# COPY config/starship/starship.toml $HOME/.config/starship.toml
