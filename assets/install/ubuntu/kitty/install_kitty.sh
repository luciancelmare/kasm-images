#!/usr/bin/env bash
set -ex
# Install Kitty

apt-get install -y kitty 
# ## create desktop shortcut for kitty
chmod +x /usr/share/applications/kitty.desktop
cp /usr/share/applications/kitty.desktop $HOME/Desktop/kitty.desktop
chmod +x $HOME/Desktop/kitty.desktop

# ### Kitty theming
# RUN mkdir $HOME/.config/kitty
# COPY config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
# COPY config/kitty/help $HOME/.config/kitty/help


# #DRACULA
# COPY config/kitty/dracula/dracula.conf $HOME/.config/kitty/dracula.conf
# COPY config/kitty/dracula/diff.conf $HOME/.config/kitty/diff.conf
# RUN echo "include dracula.conf" >> ~/.config/kitty/kitty.conf