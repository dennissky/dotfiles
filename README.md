#  mac开发环境配置 
# mac开发常用软件
```
# install Homebrew https://brew.sh/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew cask install
brew cask install iterm2 \
  alfread \

# brew install
brew install go \
vim \
python \
nodejs \
zplug \
autojump \
tree \
wget

brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags

# nerd font
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

# install oh-my-zsh  https://github.com/robbyrussell/oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# now you can copy your own .zshrc file


# install zplug, plugin manager for zsh, https://github.com/zplug/zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# coc.nvim
:CocConfig
{
    "languageserver": {
    "golang": {
      "command": "/Users/dennis/go/bin/gopls",
      "rootPatterns": ["go.mod", ".vim/", ".git/", ".hg/"],
      "filetypes": ["go"],
      "initializationOptions": {
        "usePlaceholders": true
      }
    }
  }
}
```
# chrome插件
Momentum,Octotree,uBlock Plus Adblocker
Vimium,OneTab,Bookmark Sidebar,Extension Manager

# 心情软件
pap.er 

# 改建
karabiner
