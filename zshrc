# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# https://github.com/denysdovhan/spaceship-prompt
# ZSH_THEME="kolo"
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="spaceship"
export TERM="xterm-256color"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git colored-man-pages node nvm yarn npm npx)

# User configuration
export ANDROID_HOME=$HOME/Library/Android/sdk
export GOPATH=$HOME/Work/CODE/GOLANG
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$GOPATH/bin:$HOME/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
#
# GIT
#export GITHUB_USER=`whoami`
#export GITHUB_TOKEN=...

# OH_MY_ZSH
DISABLE_UNTRACKED_FILES_DIRT="true"
source $ZSH/oh-my-zsh.sh

# if you do a 'rm *', Zsh will give you a sanity check!
setopt RM_STAR_WAIT
# allows you to type Bash style comments on your command line
setopt interactivecomments
# Zsh has a spelling corrector
setopt CORRECT

# Spaceship prompt
# https://github.com/denysdovhan/spaceship-prompt/blob/master/docs/Options.md
SPACESHIP_DIR_TRUNC=6
SPACESHIP_DIR_TRUNC_PREFIX=…/
SPACESHIP_DIR_TRUNC_REPO=false
# git
SPACESHIP_GIT_BRANCH_COLOR=green
# host & user
SPACESHIP_HOST_SHOW=always
SPACESHIP_HOST_PREFIX=@
SPACESHIP_USER_SHOW=true
# errors
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_EXIT_CODE_PREFIX=[
SPACESHIP_EXIT_CODE_SUFFIX=]
#SPACESHIP_SWIFT_SHOW_GLOBAL=true

# needed for GRV - https://github.com/rgburke/grv
unalias grv

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# RVM
#unset PREFIX
#nvm alias default 10.16.0
#nvm use default

fpath=($HOME/.oh-my-zsh/completions $fpath)
autoload -U compinit && compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#EOF
