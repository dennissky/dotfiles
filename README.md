#  开发环境配置 

# homebrew

```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

```

```sh
brew install go \
vim \
python \
node \
zplug \
autojump \
tree \
wget \
lua \
luarocks \
mitmproxy \
thefuck \
maven \
tomcat \
tmux \
gotop \
mycli \
ranger \
tldr


brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags
```

```sh
brew cask install iterm2 \
alfread \
hammerspoon \
keycastr \
kap

```

# font

```shell
nerd font
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

# tpm,zplug

```
https://github.com/tmux-plugins/tpm

https://github.com/zplug/zplug
```

# coc

```json

# coc.nvim
:CocConfig
{
    "languageserver": {
    "golang": {
      "command": "gopls",
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
* Momentum
* Octotree
* uBlock Plus Adblocker
* Vimium
* OneTab
* Bookmark Sidebar
* Extension Manager
* 下载+
* FeHelper
* GitZip
* SourceGraph
* MathJax Plugin for Github
* 书签侧边栏
* Dark Reader
* DevDocs

# 其他软件
* pap.er
* karabiner
* the unarchiver
* postman
* pdf guru
* parrels desktop
* microsoft remote desktop
* medis
* bywave
* chrome
* OmniPlan
