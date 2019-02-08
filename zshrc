# Path to your oh-my-zsh installation.
export ZSH=/Users/rolima/.oh-my-zsh

# ZSH_THEME="kolo"
ZSH_THEME="spaceship"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git colored-man-pages docker xcode golang swift node npm yarn gradle)

# User configuration
export GOPATH=$HOME/Work/CODE/GOLANG
export ANDROID_HOME=$HOME/Library/Android/sdk
export JDEV_HOME=$HOME/Oracle/Middleware/OH_12.2.1.3/jdeveloper
export PATH="/usr/local/opt/ruby/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/go/libexec/bin:$GOPATH/bin:$JDEV_HOME/jdev/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:/scratch/helium/bin"


# ADE
#export ADE_SITE=ade_fusion_slc
#export ADE_DEFAULT_VIEW_STORAGE_LOC=/net/`hostname -s`/scratch/$USER/view_storage
#export ADE_DEFAULT_TWORK_STORAGE_LOC=/net/`hostname -s`/scratch/$USER/view_storage
#export ADE_AUTO_MAP=disabled

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

#export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_COMMAND='fd --type f --follow --exclude .git'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

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

unalias grv
# EOF ####
# fpath=(~/.zsh $Ifpath)

if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi
