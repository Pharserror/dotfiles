### Meta ###
alias editconfig="vi ~/.config/fish/config.fish"

# SHELL - edit settings
alias editaliases="vi ~/.aliases.fish"
alias editexports="vi ~/.exports.fish"

# GIT
#
## FISH
#
abbr --add ga 'git add'
abbr --add gb 'git branch'
abbr --add gc 'git checkout'
abbr --add gcm 'git commit -m'
abbr --add gcp 'git cherry-pick'
abbr --add gd 'git diff'
abbr --add gm 'git merge'
abbr --add gmm 'if read_confirm; git merge master; end'
abbr --add gp 'git pull'
abbr --add gpb 'git pull (git config --get remote.origin.url) (git rev-parse --abbrev-ref HEAD)'
abbr --add gpo 'git push origin (git rev-parse --abbrev-ref HEAD)'
abbr --add grh 'git reset --hard HEAD~1'
abbr --add grm 'git rm'
abbr --add gs 'git status'
abbr --add gum 'git reset --merge ORIG_HEAD'

function gbc
  git branch $argv; git checkout $argv;
end

# SHELL - ls
alias l="ls -CF"
alias la="ls -A"
alias ll="ls -alF"
alias lldir="ls -la | grep ^d"

# WEBPACK
alias pack="webpack --config webpack.config.js"

# POSTGRES
alias pgstart="postgres -D $PG_DATA_DIR start > /dev/null"

# FISH - source
alias resource="source ~/source/dotfiles/config.fish"

# NVM
#
# Commenting this out in favor of asdf
#
# function nvm
#   bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
# end

# UTILITIES
# function read_confirm
#   while true
#     read -l -P 'Do you want to continue? [y/N] ' confirm
#
#     switch $confirm
#       case Y y
#         return 0
#       case '' N n
#         return 1
#     end
#   end
# end

# RVM
#
## FISH
abbr --add rv 'rvm current and ruby --version'
abbr --add rgc 'rvm gemset create'
abbr --add rgd 'rvm gemset delete'
abbr --add rgl 'rvm gemset list'
abbr --add rgu 'rvm gemset use'
abbr --add rvc 'rvm current'
abbr --add rvl 'rvm list'
abbr --add rvi 'rvm install'
abbr --add rvu 'rvm use'

# RAILS
# abbr sret='set -x RAILS_ENV test'

# VAGRANT
abbr --add vd 'vagrant destroy'
abbr --add vs 'vagrant ssh'
abbr --add vu 'vagrant up'

# DOCKER
abbr --add dcd 'docker-compose down';

function debash
  docker exec -it --user $argv[1] $argv[2] /bin/bash;
end

function docker-down-force
  cd $argv;
  echo "**** Shutting down docker containers...";
  docker-compose down --remove-orphans;
  echo "**** Pruning...";
  docker system prune;
  echo "**** Killing containers...";
  docker kill (docker ps -aq);
  echo "**** Killing Docker processes...";
  docker rm -f -v (docker ps -aq);
  echo "**** Removing images...";
  docker rmi -f (docker images -q);
  echo "**** Operation Complete";
end

# RSpec
# abbr ber='bundle exec rspec'

# Batgrep
#
## FISH
#
alias bg="batgrep"

# MongoDB
alias mongostart="mongod --config /usr/local/etc/mongod.conf"

# LOCAL ALIASES
#
# Place any aliases/helpers here specific to your local dev setup
source ~/.aliases.local.fish
