#!/usr/bin/env bash
set -ex

# Install  Parsec
apt update

wget -q https://builds.parsec.app/package/parsec-linux.deb -O /tmp/parsec-linux.deb

apt install -y /tmp/parsec-linux.deb
rm /tmp/parsec-linux.deb


# Desktop icon
cat >/usr/share/applications/parsec.desktop <<EOL
[Desktop Entry]
Name=Parsec
GenericName=Parsec
Comment=Simple, low-latency game streaming.
Exec=/usr/bin/parsecd %u
Icon=/usr/share/icons/hicolor/256x256/apps/parsecd.png
Terminal=false
Type=Application
Categories=Network;Game;Utility;
EOL


chmod +x /usr/share/applications/parsec.desktop
cp /usr/share/applications/parsec.desktop $HOME/Desktop/parsec.desktop
chmod +x $HOME/Desktop/parsec.desktop
