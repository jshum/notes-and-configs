# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# jshum : 2013-05-28
export M2_HOME=/usr/local/apache-maven/default
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
export CATALINA_HOME=/Library/Tomcat/Home

# jshum : 2013-05-29
alias rm='rm -i'
alias sshvl='ssh ubuntu@proxy.viglink.com'
alias vag='cd ~/code/viglink/vagrant; vagrant up'
alias bounce='cd ~/code/viglink/viglink-web/analysis/bounce_rate'
# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin
ssh-add ~/.ssh/jshum

alias tomcat='cd /Library/Tomcat/Home'
export PATH=$PATH:/Library/Tomcat/Home/bin

alias fast_web_deploy='mvn clean install -o -DskipTests -f ~/code/viglink/viglink-web/pom.xml && shutdown.sh && rm -rf /Library/Tomcat/Home/webapps/ROOT/* && cp ~/code/viglink/viglink-web/target/web.war /Library/Tomcat/Home/webapps/ROOT/ && startup.sh'
alias web_war='mvn clean install -o -DskipTests -f ~/code/viglink/viglink-web/pom.xml && shutdown.sh && rm -rf /Library/Tomcat/Home/webapps/ROOT/* && cp ~/code/viglink/viglink-web/target/web.war /Library/Tomcat/Home/webapps/ROOT/ '
export VL_ROLE=jason
alias memcache='launchctl load -w ~/Library/LaunchAgents/com.danga.memcached.plist'
export TODAY=`date "+%Y-%m-%d"`

alias ports='lsof -i -tcp:8080'

alias localhostlog="tail -f /Library/Tomcat/Home/logs/localhost.$TODAY.log"
alias catalinalog="tail -f /Library/Tomcat/Home/logs/catalina.$TODAY.log"
alias tomcatlog="tail -f /Library/Tomcat/Home/logs/tomcat.$TODAY.log"
alias recreatedb='mysql -u viglinktest -ppassword viglinktest < ~/code/viglink/db/model/create_viglink_schema.sql'
