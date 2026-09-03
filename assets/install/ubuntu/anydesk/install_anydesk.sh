#!/usr/bin/env bash
set -ex
# Install AnyDesk

wget https://download.anydesk.com/linux/anydesk_8.0.4-1_amd64.deb -O /tmp/anydesk_amd64.deb
      
# dpkg -i ./assets/install/ubuntu/anydesk/anydesk_8.0.4-1_amd64.deb
dpkg -i /tmp/anydesk_amd64.deb

rm -rf /tmp/anydesk_amd64.deb


# Desktop icon
cat >/usr/share/applications/anydesk.desktop <<EOL
[Desktop Entry]
Type=Application
Name=AnyDesk
GenericName=AnyDesk
X-GNOME-FullName=AnyDesk
Exec=/usr/bin/anydesk %u
Icon=anydesk
Terminal=false
TryExec=anydesk
Categories=Network;GTK;
MimeType=x-scheme-handler/anydesk;
Name[de_DE]=AnyDesk

EOL
chmod +x /usr/share/applications/anydesk.desktop
cp /usr/share/applications/anydesk.desktop $HOME/Desktop/anydesk.desktop
chmod +x $HOME/Desktop/anydesk.desktop

