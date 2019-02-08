# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
# -----------------------------------------
# STUFF
alias tree='tree -C -sh'
alias virc='vim ~/.vimrc'
alias vizc='vim ~/.zshrc'
#alias fixbrew='sudo chown -R $(whoami) $(brew --prefix)/*'
alias fixbrew='sudo chown -R $(whoami) /usr/local/bin /usr/local/lib'

#alias syncDevTools='rsync -ahv --delete --timeout=10 --exclude=.git --exclude "**/*.ipa" --exclude "**/*.apk" --exclude "**/*.mp4" --exclude "**/*.zip" -P mwheatle@oracletap-ci.us.oracle.com:/Users/mwheatle/Work/AUTOMATION/DevTools/ $HOME/Work/AUTOMATION/DevTools'

# -----------------------------------------
# GIT stuff
alias grbd='git rebase develop'

# -----------------------------------------
# Swift/OBJC
alias sb='swift build | xcpretty'

# -----------------------------------------
# GO helpers
gocd () { cd `go list -f '{{.Dir}}' $1` }

# -----------------------------------------
# docker aliases
# Get latest container ID
alias dl="docker ps -l -q"

# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Get images
alias di="docker images"

# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -i -t"

# remove dangling images
ddgl() { docker rmi $(docker images -f "dangling=true" -q); }

# Stop all containers
dstop() { docker stop $(docker ps -a -q); }

# Remove all containers
drm() { docker rm $(docker ps -a -q); }

# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Remove all images
dri() { docker rmi $(docker images -q); }

# Dockerfile build, e.g., $dbu tcnksm/test
dbu() { docker build -t=$1 .; }

# Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

# Bash into running container
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }
