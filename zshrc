# Path to your oh-my-zsh installation.
export ZSH=/Users/rolima/.oh-my-zsh

# https://github.com/denysdovhan/spaceship-prompt
# ZSH_THEME="kolo"
ZSH_THEME="spaceship"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git colored-man-pages docker xcode golang swift node npm yarn gradle pyenv pip)

# User configuration
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_212.jdk/Contents/Home
export GOPATH=$HOME/Work/CODE/GOLANG
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$GOPATH/bin:$HOME/bin"
#export PYT_2=$HOME/Library/Python/2.7
#export PATH="/usr/local/bin:$PYT_2/bin:/usr/bin:/bin:/usr/sbin:/sbin:$GOPATH/bin:$MCLIMT"
#
# KPCTL
export VAULT_ADDR=https://vserv-eu.sos.ibm.com:8200
export GITHUB_USER=rodrigo-lima

# export ANDROID_HOME=$HOME/Library/Android/sdk
# export JDEV_HOME=$HOME/Oracle/Middleware/OH_12.2.1.3/jdeveloper
# export PATH="/usr/local/opt/ruby/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/go/libexec/bin:$GOPATH/bin:$JDEV_HOME/jdev/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:/scratch/helium/bin"

# OH_MY_ZSH
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export TERM="xterm-256color"

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

# SWIFT
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

# added by travis gem
[ -f /Users/rolima/.travis/travis.sh ] && source /Users/rolima/.travis/travis.sh

# VAULT
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# EOF ####
