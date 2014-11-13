alias ls="ls -G"
alias ll="ls -l"
alias dev="ssh james@dev-james.wikia-prod"
alias devpush="rsync -av --delete /Users/Sutterfield/wikia/app/ james@dev-james.wikia-prod:/usr/wikia/source/app/"
alias gg="git grep -En"
alias gc="git checkout"
alias gp="git pull --rebase"
alias elect="cd /Users/Sutterfield/wikia/electrum/electrum"
alias rp="rsync -av --delete --exclude=LocalSettings.php --exclude=lib/Wikia/ /Users/Sutterfield/wikia/app/ james@dev-james.wikia-prod:/usr/wikia/source/app/"
alias deploy="ssh james@deploy-s3"

function parse_git_branch {
    git branch --color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\h:\W \$(parse_git_branch) \u$ "
alias app="cd /Users/Sutterfield/wikia/app"
alias wikia="cd /Users/Sutterfield/wikia"
alias config="cd /Users/Sutterfield/wikia/config"
alias sel="cd /Users/Sutterfield/wikia/selenium-tests"
alias gitls=" git diff-tree --no-commit-id --name-only -r HEAD"

export PATH=":/Users/Sutterfield/pear/bin:$PATH"
export PATH=:/Users/Sutterfield/pear/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/Library/PostgreSQL/9.3/bin
export PGDATA=/Library/PostgreSQL/9.3/data
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home"

function dssh {
  local server=$1;
  local port=$2

  if [ -z "$server" ]
  then
    server=dev-james.prod.wikia.net;
  fi;

  if [[ -z $port || $port -eq 0 ]]
  then
    port=9000;
  fi;

  command="ssh -o ServerAliveInterval=20 -R $port:localhost:$port james@$server";
  echo $command;
  eval $command;
}

function xdebug {
  local command=$*;
  local xdebug="XDEBUG_CONFIG=\"idekey=phpstorm1\" PHP_IDE_CONFIG=\"serverName=james-nelson\" ${command}";

  eval $xdebug;
}
