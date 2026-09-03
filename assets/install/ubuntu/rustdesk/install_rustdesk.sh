#!/usr/bin/env bash
set -ex



# Install  RustDesk
apt update
wget -q https://github.com/rustdesk/rustdesk/releases/download/${RUSTDESK_VERSION}/rustdesk-${RUSTDESK_VERSION}-x86_64.deb -O /tmp/rustdesk-${RUSTDESK_VERSION}-x86_64.deb
apt install -y /tmp/rustdesk-${RUSTDESK_VERSION}-x86_64.deb
rm /tmp/rustdesk-${RUSTDESK_VERSION}-x86_64.deb
 


# Desktop icon
cat >/usr/share/applications/rustdesk.desktop <<EOL
[Desktop Entry]
Name=RustDesk
GenericName=Remote Desktop
Comment=Remote Desktop
Exec=rustdesk %u
Icon=rustdesk
Terminal=false
Type=Application
StartupNotify=true
Categories=Network;RemoteAccess;GTK;
Keywords=internet;linux;dart;rust;remote-control;p2p;teamviewer;rust-lang;rdp;remote-desktop;vnc;
Actions=new-window;
StartupWMClass=rustdesk

X-Desktop-File-Install-Version=0.23

[Desktop Action new-window]
Name=Open a New Window
Exec=rustdesk %u
EOL


chmod +x /usr/share/applications/rustdesk.desktop
cp /usr/share/applications/rustdesk.desktop $HOME/Desktop/rustdesk.desktop
chmod +x $HOME/Desktop/rustdesk.desktop