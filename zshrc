# If you come from bash you might have to change your $PATH.
source /usr/local/opt/zplug/init.zsh 


# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/dennis/.oh-my-zsh"

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug 'zsh-users/zsh-completions', defer:2
zplug 'zsh-users/zsh-history-substring-search'
zplug "plugins/vi-mode", from:oh-my-zsh
zplug 'plugins/git', from:oh-my-zsh, if:'which git'
zplug 'romkatv/powerlevel10k', as:theme, depth:1
zplug "plugins/kubectl",   from:oh-my-zsh

[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load 
proxy () {
    export HTTP_PROXY=http://127.0.0.1:10080
    export HTTPS_PROXY=http://127.0.0.1:10080
}
noproxy () {
    unset HTTP_PROXY
    unset HTTPS_PROXY
    echo "HTTP Proxy off"
}


export HOMEBREW_NO_AUTO_UPDATE=true
export ZPLUG_HOME=/usr/local/opt/zplug


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
