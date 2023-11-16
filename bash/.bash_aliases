# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# systemd aliases
alias sysud='sudo systemctl start docker containerd'
alias sysdd='sudo systemctl stop docker docker.socket containerd'

# git autocompletion - Ubuntu 20.04
if [ -f "/usr/share/bash-completion/completions/git" ]; then
  . /usr/share/bash-completion/completions/git
else
  echo "Could not load git completions for aliases"
fi

# git aliases
alias gst='git status'
alias gc='git checkout'
__git_complete gc _git_checkout
alias gcb='git checkout -b'
alias gb='git branch'
alias gd='git diff'
__git_complete gd _git_diff
alias gds='git diff --shortstat'
__git_complete gds _git_diff
alias ga='git add'
alias gaa='git add .'
alias gcmt='git commit'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gp='git pull'
alias gpo='git push origin'
__git_complete gpo _git_push
alias gpoc='git push origin $(git branch --show-current)'
alias gsh='git stash'
alias gshp='git stash pop'
alias gbd='git branch -D'
__git_complete gbd _git_branch

# docker aliases
alias dcp='docker-compose'
alias dcb='docker-compose build'
alias dcps='docker-compose ps'
alias dcud='docker-compose up -d'
alias dce='docker-compose exec '
alias dcea='docker-compose exec app '
alias dceab='docker-compose exec app bash'
alias dcewfa='docker-compose exec --workdir /app/frontend app '
alias dcl='docker-compose logs'
alias dcla='docker-compose logs app'
alias dclf='docker-compose logs -f'
alias dclfa='docker-compose logs -f app'
alias dcr='docker-compose restart'
alias dcra='docker-compose restart app'
alias dcrn='docker-compose restart nginx'
alias dcd='docker-compose down'

# node aliases
alias npi='npm install '
alias npc='npm ci'
alias cyr='npx cypress run -b chrome'
alias cyo='npx cypress open'

# frontend aliases
alias nps='npm start'
alias npd='npm run dev'
alias nprb='npm run build'
alias nprbw='npm run build:watch'

# django aliases
alias dj='./manage.py'
alias djm='./manage.py migrate'
alias djsm='./manage.py showmigrations'
alias djmm='./manage.py makemigrations'
alias djsh='./manage.py shell'

# django extensions
alias djshp='./manage.py shell_plus'
alias djsu='./manage.py show_urls'
alias djvt='./manage.py validate_templates'

