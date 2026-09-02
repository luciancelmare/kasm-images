#!/usr/bin/env bash
set -ex
# Install Bat

wget https://github.com/sharkdp/bat/releases/download/v0.26.1/bat_0.26.1_amd64.deb -O /tmp/bat_amd64.deb
      
# dpkg -i ./assets/install/ubuntu/bat/bat_0.26.1_amd64.deb
dpkg -i /tmp/bat_amd64.deb

rm -rf /tmp/bat_amd64.deb
