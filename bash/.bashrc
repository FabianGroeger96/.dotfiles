# Editor configuration
export EDITOR='vim'

export CLICOLOR=1
export PS1="\[\e[m\] \[\e[32m\]\w\[\e[m\] \[\e[34m\]»\[\e[m\] "

export LSCOLORS=cxgxfxexbxegedabagacad
alias ls='ls --color'
alias ls='ls -G'

# NeoVim as default instead of VIM
alias vi="nvim"

# Alias Filepaths
alias home="cd ~"
alias dconfig='cd ~/.conf/'
alias dgit="cd ~/Documents/_git/"
alias dyodel="cd ~/Documents/_git/HSLU/artificial_yodel/music_embedding/"
alias dgithub='cd ~/Documents/_git/GitHub/'
alias dbrain='cd ~/Dropbox/Obsidian/Second\ Brain/'
alias ll="ls -al"

# Alias ssh
alias gpu02='ssh fgroger@gpu02.res.el.eee.intern'
alias gpu_ws04='ssh fgroger@10.180.39.14'
alias hslu_vm='ssh fgroger@personal-grf.res.el.eee.intern'
alias swarm_vm='ssh fgroger@abiz-qaswarm-mng02.res.el.eee.intern'

# Alias utils
alias open='xdg-open'

# Esthetics
# export GREP_OPTIONS=' — color=auto'
# alias grep='grep --color=auto'
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
force_color_prompt=yes

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
