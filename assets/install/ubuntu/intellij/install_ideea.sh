# Install IntelliJ Ideea
wget "https://download.jetbrains.com/idea/idea-2026.2.1.tar.gz" -O /tmp/jbidea.tar.gz \
      && tar xf /tmp/jbidea.tar.gz -C /opt



# Desktop icon
cat >/usr/share/applications/idea.desktop <<EOL
[Desktop Entry]
Type=Application
Name=IntelliJ IDEA
Icon=/opt/idea-IU-262.9437.185/bin/idea.png
Exec="/opt/idea-IU-262.9437.185/bin/idea"
Comment=IntelliJ Idea GUI
Categories=Development;Code;
EOL
chmod +x /usr/share/applications/idea.desktop
cp /usr/share/applications/idea.desktop $HOME/Desktop/idea.desktop
chmod +x $HOME/Desktop/idea.desktop

