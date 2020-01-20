ZSH=$HOME/.oh-my-zsh
plugins=(git extract ssh-agent gpg-agent docker docker-compose fancy-ctrl-z)
source $ZSH/oh-my-zsh.sh
autoload -Uz compinit
compinit
source <(antibody init)
antibody bundle <<EOF
robbyrussell/oh-my-zsh path:lib
Ehres/ehres-zsh path:themes
zdharma/zsh-diff-so-fancy
zsh-users/zsh-autosuggestions
zsh-users/zsh-completions
zsh-users/zsh-syntax-highlighting
EOF

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export BAT_THEME='DarkNeon'
