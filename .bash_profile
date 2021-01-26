export ANDROID_HOME=/Users/dason/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools  
export PATH=$PATH:$ANDROID_HOME/platform-tools
export GRADLE_HOME=/Applications/Android\ Studio.app/Contents/gradle/gradle-4.4
export PATH=$PATH:$GRADLE_HOME/bin
# export PS1="\[\033[01;31;01m\][\u@ \w]\$\[\033[01;00;00m\]"
export M2_HOME=/Users/dason/Documents/devtools/apache-maven-3.6.1 
export FLUTTER_HOME=/Users/dason/development/flutter
#export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH:.
export CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.
export PATH=$PATH:$M2_HOME/bin
export PATH=$PATH:$FLUTTER_HOME/bin
export PATH=$PATH:$FLUTTER_HOME/bin/cache/dart-sdk/bin
export PATH=$PATH:$FLUTTER_HOME/.pub-cache/bin

#GOROOT
export GOROOT=/usr/local/Cellar/go/1.15.2/libexec
#GOPATH
export GOPATH=$HOME/go
#GOPATH bin
export PATH=$PATH:$GOPATH/bin
#GOPATH root bin
export PATH=$PATH:$GOROOT/bin

export MYSQL_HOME=/usr/local/mysql
export PATH=$PATH:$MYSQL_HOME/bin

alias start_mysql='sudo $MYSQL_HOME/bin/mysqld_safe &'
alias stop_mysql='sudo $MYSQL_HOME/bin/mysqladmin shutdown -p'



# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
# default python2
# alias python="/Library/Frameworks/Python.framework/Versions/3.6/bin/python3.6"
alias lsa="ls -alt"
# alias rm="echo Use 'del', or the full path i.e. '/bin/rm'"
# alias del="rmtrash"

alias gb="git branch -a"
alias gnb="git checkout -b"
alias gco="git checkout"
alias gst="git status"
alias gsl="git stash list"
alias gss="git stash save"
alias gh="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias gmnf="git merge --no-ff"
alias gmh="git log --graph --pretty=format:'%C(yellow)%h%Creset -%C(cyan)%d%Creset %s %Cgreen(%an, %cr)' --abbrev-commit"
alias gfb="git fetch --prune"
alias gdb="git branch -d"
alias gpb="git push --set-upstream origin"
alias gsa0="git stash apply stash@{0}"
alias gsa1="git stash apply stash@{1}"
alias gsa2="git stash apply stash@{2}"
alias gsa3="git stash apply stash@{3}"
alias gsa4="git stash apply stash@{4}"
alias gsa5="git stash apply stash@{5}"
alias gsa6="git stash apply stash@{6}"
alias gss="git stash save"
alias gsd0="git stash drop stash@{0}"
alias gsd1="git stash drop stash@{1}"
alias gsd2="git stash drop stash@{2}"
alias gsd3="git stash drop stash@{3}"
alias gsd4="git stash drop stash@{4}"
alias gsd5="git stash drop stash@{5}"
alias gsd6="git stash drop stash@{6}"

alias editpf="vi ~/.bash_profile"
alias sourcepf="source ~/.bash_profile"


export PATH
