alias ag='rg'
alias cv='crate-version -c'
alias ca='cargo'
alias matrix='cmatrix'
alias markoff='markdown-live-preview'
alias rmcolor="perl -pe 's/\x1b\[[0-9;]*[mG]//g'"
alias c='clear'
alias cdd='cd -'  # goto last dir cd'ed from
alias cl='clear; l'
alias cls='clear; ls'
alias cppwd="pwd | pbcopy"
alias path="echo $PATH | tr : '\n'"
alias cpu='top -o cpu' # cpu
alias mem='top -o vsize' # memory
alias dt='cd ~/Desktop'
alias ea='v $DOT/zsh/aliases'
alias ee='v $DOT/zsh/env'
alias ef='v $DOT/zsh/functions'
alias ep='v $DOT/zsh/prompt'
alias flushdns="dscacheutil -flushcache" # Flush DNS cache
alias h='history'
alias 'l.'='lsd -d .[^.]*'
alias l='lsd --long --all'
alias la='lsd --long --all'
alias tree='lsd --long --tree'
alias md='mkdir -p'
alias mkdir='mkdir -p'
alias reload='exec $SHELL'
alias rl='exec $SHELL'
alias rd='rm -rf'
alias uuids="egrep -o '[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}'"
alias ra='ranger'
alias pip='pip3'
alias python='python3'

if (which nvim > /dev/null); then
  alias vim='nvim'
  alias vi='nvim'
  alias vv='nvim $(rg --files | fzf)'
else
  alias vi='vim'
fi

if [ $(uname) = "Linux" ]; then
  alias copy='xclip -selection clipboard -in'
  alias paste='xclip -selection clipboard -out'
elif [ $(uname) = "Darwin" ]; then
  alias copy="pbcopy"
  alias paste="pbpaste"
fi

alias d='git diff'
alias ga='git add'
alias gaa='git add --all'

alias gaf='git add `s | regex -v "^(A|M|##)" | sed "s/...//" | fzf`'

alias gamend='git amend'
alias gap='reload && git ap'
alias gapf='git add -p `s | regex -v "^(M|##)" | sed "s/...//" | fzf`'
alias gb='git b'
alias gbco='git bco'
alias gca='git ca'
alias gco='git co'
alias gcob='git cob'
alias gcount='git rev-list --all | wc -l'
alias gd='git d'
alias gdc='git dc'
alias gincoming='git incoming'
alias gl='git l'
alias gll='git ll'
alias grl='git rl'
alias grll='git rll'
alias gsla='git sla'
alias gm='git m'
alias gmn='git mn'
alias goutgoing='git outgoing'
alias gp='git p'
alias gpll='git pll'
alias gr='git r'
alias grb='git rb'
alias grba='git rba'
alias grbc='git rbc'
alias grbi='git rbi'
alias gpr='git pr'
alias grh='git rh'
alias gs='git s'
alias gpf='git push -f'
alias gpp='git pp'
alias gunstage='git unstage'
alias update-what-i-did-today-note='whatididtoday > ~/Dropbox/notes/whatididtoday.txt'
alias dcc='heroku run rails c -r development'
alias dll='heroku logs -t -r development'
alias git-here='git rev-parse HEAD'
alias gcp='git commit && git push'
alias gcpf='git commit && git push -f'

alias gaf='git add `s | regex -v "^(M|##)" | sed "s/...//" | fzf`'
alias gap='git ap'
alias gc='git c'
alias gbf='git-branches-with-last-commit | fzf --ansi | cut -f 1 -d " "'
alias gcof='git-branch-picker'
alias gmf='git merge `gbf`'

alias run-graphql='spring rails runner tmp/req.rb | jq'
alias run-changed-specs='git diff --name-only master | ag spec | xargs rspec'

alias stream='stream-countdown 10 -g davidpdrsn -t davidpdrsn'
alias cat='bat'

alias ls='lsd'
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'

alias speed="speedtest-cli"
