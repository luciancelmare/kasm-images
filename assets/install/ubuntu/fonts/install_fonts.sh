#!/usr/bin/env bash
set -ex
# Install FONTS

chmod +x $INST_SCRIPTS/fonts/SourceCode/install.sh
bash $INST_SCRIPTS/fonts/SourceCode/install.sh

# ### Mono Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.2/FiraCode.zip -P $HOME/.fonts \
         && unzip $HOME/.fonts/FiraCode.zip -d $HOME/.fonts


### JetBrains Font
mkdir /usr/share/fonts/JetBrains
cp -r $INST_SCRIPTS/fonts/JetBrainsMono-2.242/fonts* /usr/share/fonts/JetBrains

# ### Source Code Font
# RUN mkdir $HOME/.fonts
# COPY assets/install/fonts/SourceCode/install.sh $HOME/.fonts/SourceCode.sh
# RUN chmod +x $HOME/.fonts/SourceCode.sh
# RUN bash $HOME/.fonts/SourceCode.sh && rm -rf $HOME/.fonts/SourceCode.sh

# ### Mono Nerd Font
# RUN wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.2/FiraCode.zip -P $HOME/.fonts \
#         && unzip $HOME/.fonts/FiraCode.zip -d $HOME/.fonts
