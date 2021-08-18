# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Make zsh independet for different OS
case `uname` in
  Darwin)
    # commands for OS X go here
		PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
  ;;
  Linux)
    # commands for Linux go here
  ;;
esac

# Path to your oh-my-zsh installation.
DISABLE_MAGIC_FUNCTIONS=true
export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/.dotfiles
export STOW_FOLDERS="bash,i3,nvim,tmux,vim,zsh,polybar"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	docker
	docker-compose
	#vi-mode
)

source $ZSH/oh-my-zsh.sh

# VI mode settings
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true
MODE_INDICATOR="%F{yellow}+%f"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='nvim'

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# font color for tmux sessions
export TERM=xterm-256color

# Alias Filepaths
alias home="cd ~"
alias ddot='cd ~/.dotfiles/'
alias dgit="cd ~/Documents/_git/"
alias dyodel="cd ~/Documents/_git/HSLU/artificial_yodel/music_embedding/"
alias dgithub='cd ~/Documents/_git/GitHub/'
alias dbrain='cd ~/Dropbox/Obsidian/Second\ Brain/'

# Alias ssh
alias gpu02='ssh fgroger@gpu02.res.el.eee.intern'
alias gpu_ws04='ssh fgroger@10.180.39.14'
alias hslu_vm='ssh fgroger@personal-grf.res.el.eee.intern'
alias swarm_vm='ssh fgroger@abiz-qaswarm-mng02.res.el.eee.intern'

# Alias utils
alias open='xdg-open'
alias ll="ls -al"
alias vi="nvim"
alias vim="nvim"
alias oldvim="vim"
alias python="python3"
alias oldpython="python"
alias pip="pip3"
alias oldpip="pip"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
