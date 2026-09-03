#!/usr/bin/env bash
set -ex
# Install AnyDesk
apt update
apt -y install libminizip1 gdebi-core

 wget "https://download.teamviewer.com/download/linux/teamviewer_amd64.deb" -O /tmp/teamviewer_amd64.deb
 
 apt install -y /tmp/teamviewer_amd64.deb

# wget "https://download.teamviewer.com/download/teamviewer_qs.tar.gz" -O /tmp/jbidea.tar.gz \
      # && tar xf /tmp/jbidea.tar.gz -C /opt/


# chown -R 1000:1000 /opt/teamviewerqs

# # Desktop icon
# cat >/usr/share/applications/teamviewer_qs.desktop <<EOL
# [Desktop Entry]
# Version=1.0
# Encoding=UTF-8
# Type=Application
# Categories=Network;
# Name=TeamViewer QuickSupport
# Comment=Remote control solution.
# Exec=/opt/teamviewerqs/tv_bin/script/teamviewer
# Icon=/opt/teamviewerqs/logo.png
# EOL

# cp  $INST_SCRIPTS/teamviewer/logo.png /opt/teamviewerqs/logo.png

# chmod +x /usr/share/applications/teamviewer_qs.desktop
# cp /usr/share/applications/teamviewer_qs.desktop $HOME/Desktop/teamviewer_qs.desktop
# chmod +x $HOME/Desktop/teamviewer_qs.desktop

