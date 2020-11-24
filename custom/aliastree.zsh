# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
# -----------------------------------------
# STUFF
alias ls=exa
alias tree='tree -C -sh'
alias virc='vim ~/.vimrc'
alias vizc='vim ~/.zshrc'
alias fixbrew='sudo chown -R $(whoami) /usr/local/bin /usr/local/lib'

# -----------------------------------------
# REACT
alias rn-reset='watchman watch-del-all && react-native start --reset-cache'
# alias pkg-reset='watchman watch-del-all; yarn start-packager'
alias pkg-reset='watchman watch-del-all ;
yarn start-packager'
alias repo-full-reset='watchman watch-del-all ;
rm -rf ${TMPDIR}react-native-packager-cache-* ;
rm -rf ${TMPDIR}metro-bundler-cache-* ;
rm -rf ${TMPDIR}yarn-* ;
yarn cache clean ;
git clean -xdf ;
cp ../bobrc.json .bobrc.json ;
yarn;
yarn install-native'

# -----------------------------------------
# PYTHON
alias pipua="pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U"

# -----------------------------------------
# K8s
bxcc() { eval $(bx cs cluster-config --export $1) }
alias unbxcc='export KUBECONFIG='

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

# Stop and Remove Runnning containers
# alias drmf='docker stop $(docker ps -q) && docker rm $(docker ps -q)'
drmf() { R="$(docker ps -q)"; docker stop $R && docker rm $R; }

# Stop and Remove all containers
alias darmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Remove all images
dri() { docker rmi $(docker images -q); }

# Dockerfile build, e.g., $dbu tcnksm/test
dbu() { docker build -t=$1 .; }

# Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

# Bash into running container
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }
