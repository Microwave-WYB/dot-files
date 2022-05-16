#!/bin/bash

# backup existing config files
if [ -d ~/.config/nvim ]:
    mv ~/.config/nvim ~/.config/nvim_old
fi

if [ -d ~/.config/coc ]:
    mv ~/.config/coc ~/.config/coc_old
fi

if [ -f ~/.zshrc j]:
    mv ~/.zshrc ~/.zshrc_old
fi

# install oh-my-zsh
wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -
# install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# copy files
cp -r nvim ~/.config/nvim
cp -r coc ~/.config/coc
cp zsh/.zshrc ~/
cp zsh/.userconfig.zsh ~/

# apply zsh configs
source ~/.zshrc

# install vim-plug
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
