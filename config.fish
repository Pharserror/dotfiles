rvm default

alias ll='ls -la'

### Meta ###
alias editconfig='vi ~/.config/fish/config.fish'

### RVM ###
alias rv='rvm current and ruby --version'
alias rvi='rvm install'
alias rvu='rvm use'
# Gemset subcommands
alias rgc='rvm gemset create'
alias rgd='rvm gemset delete'
alias rgl='rvm gemset list'
alias rgu='rvm gemset use'

# RSpec
alias ber='bundle exec rspec'

### GIT ###
alias ga='git add'
alias gb='git branch'
alias gc='git checkout'
alias gcm='git commit -m'
alias gd='git diff'
alias gm='git merge'
alias gp='git pull'
alias gpb='git pull (git config --get remote.origin.url) (git rev-parse --abbrev-ref HEAD)'
alias gpo='git push origin (git rev-parse --abbrev-ref HEAD)'
alias grm='git rm'
alias gs='git status'
alias gcp='git cherry-pick'

### WEBPACK ###
alias pack='webpack --config webpack.config.js'

# Path to your oh-my-zsh installation.
set -x GIT_EDITOR "nvim"
set -x HGEDITOR "nvim"
set -x VISUAL nvim
set -x EDITOR "emacs"
set -x DISABLE_AUTO_TITLE true
set -x POWERLEVEL9K_MODE 'flat'
