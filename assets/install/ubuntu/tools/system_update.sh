#!/usr/bin/env bash
set -ex

apt update
apt -y upgrade

apt -y install curl
apt -y install wget
apt -y install unzip
apt -y install zip
apt -y install git 