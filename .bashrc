alias ls="ls -G"
alias ll="ls -l"
alias dev="ssh james@dev-james"
alias js="/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc"
stty -ixon

#function parse_git_branch {
#    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
#}

#export PS1="\h:\W \$(parse_git_branch) \u$ "

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home"
