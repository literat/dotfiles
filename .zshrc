# ~/.zshrc

# zstyle ':znap:*' ~/.zsh-plugins/.zsh-plugins

[[ -r ~/Work/znap/znap.zsh ]] ||
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/Work/znap
source ~/Work/znap/znap.zsh

# znap prompt sindresorhus/pure

znap source zsh-completions
znap source zsh-syntax-highlighting
znap source zsh-async
znap source z
znap source zsh-colored-man-pages
znap source zsh-abbrev-alias
znap source fzf-tab

# From Oh-my-ZSH
# znap source oh-my-zsh lib/completion

# From Prezto
# znap source prezto
# znap source prezto \
#   modules/helper \
#   modules/completion \
#   modules/environment \
#   modules/terminal \
#   modules/editor \
#   modules/history \
#   modules/directory \
#   modules/syntax-highlighting \
#   modules/utility
# fpath+=( $(znap path prezto) )

# Pure prompt
# znap source pure
# fpath+=$(znap path pure)
# autoload -Uz promptinit && promptinit
# prompt pure

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

# Path to your oh-my-zsh installation.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  1password
  brew
  dotenv
  extract
  git
  macos
  brew
  composer
  docker
  gitfast
  git-extras
  # git-flow
  jira
  node
  npm
  symfony2
  tig
  yarn
  z
  zsh-nvm-auto-switch
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list o:w
#
# export PATH="$(brew --prefix homebrew/php/php72)/bin:$PATH"
# export MC_SKIN=/Users/literat/.mc/solarized.ini

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

zstyle :omz:plugins:ssh-agent agent-forwarding on

# ----------
# Aliasses
# ----------
. ~/.aliasses/default
. ~/.aliasses/docker
# . ~/.aliasses/lmc

eval $(thefuck --alias)

alias zs="source ~/.zshrc"
alias gum="git pull upstream master"
# Changed your .gitignore _after_ you have added / committed some files?
# run `gri` to untrack anything in your updated .gitignore
# Put this in your .zshrc file
alias gri="git ls-files --ignored --exclude-standard | xargs -0 git rm -r"
# Open all merge conflicts or currently changed files in VS Code
# Switch out `code` for `subl`, `vim`, `atom` or your editor's CLI
alias fix="git diff --name-only | uniq | xargs code"
alias "git latest"="git for-each-ref --sort=-committerdate refs/heads/"

# ----------
# Functions
# ----------
function zource(){
  source ~/.zshrc && -
}

function openall() {
  for folder in */; do code $folder && iterm $folder; done
}

#  Uses tree - install first:
# brew install tree
function t() {
  # Defaults to 3 levels deep, do more with `t 5` or `t 1`
  # pass additional args after
  tree -I '.git|node_modules|bower_components|.DS_Store' --dirsfirst --filelimit 15 -L ${1:-3} -aC $2
}

# Take a screenshot every n seconds
# Fun for making timelapse gifs later
# run `creep 20` for every 20 seconds
function creep() {
    while :; do; echo "📸" $(date +%H:%M:%S); screencapture -x ~/Screenshots/literat/$(date +%s).png; sleep $1; done
}

export PATH="/usr/local/opt/php@5.6/bin:$PATH"
export PATH="/usr/local/opt/php@5.6/sbin:$PATH"
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="/Users/literat/Library/Python/3.7/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/opt/nvm/nvm.sh
export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.4/sbin:$PATH"

export HOMEBREW_BREWFILE=~/.brewfile
