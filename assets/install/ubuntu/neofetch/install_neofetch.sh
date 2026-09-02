#!/usr/bin/env bash
set -ex
# Install  Starship

chown 1000:1000 $HOME/.bashrc && apt update && apt install neofetch -y 

# RUN mkdir $HOME/.config/neofetch
# COPY config/starship/starship.toml $HOME/.config/starship.toml
# COPY config/neofetch/config.conf $HOME/.config/neofetch/config.conf
# COPY config/neofetch/ascii.txt $HOME/.config/neofetch/ascii.txt