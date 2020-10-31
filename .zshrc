# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="tjkirch_mod"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

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

#bash like commting style
setopt interactivecomments

#"command" not found pkgfile hook
source /usr/share/doc/pkgfile/command-not-found.zsh

source $ZSH/oh-my-zsh.sh

if [ -n "$INSIDE_EMACS" ]; then
  chpwd() { print -P "\033AnSiTc %d" }
  print -P "\033AnSiTu %n"
  print -P "\033AnSiTc %d"
fi

plugins+=(zsh-completions)
autoload -U compinit && compinit

alias grep='grep $1 --color'
alias grepl='grep -rnIi $1 --color'

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
#. "/opt/ros/indigo/setup.zsh"
#. "/home/major/ros_catkin_ws/devel/setup.zsh"       
#. "/home/major/ros_catkin_ws/devel_isolated/quanjo_navcon/setup.zsh"
#. "/home/major/ros_catkin_ws/devel_isolated/stageros_synced4/setup.zsh"

source ~/.zsh_aliases
eval $(thefuck --alias)

autoload bashcompinit
bashcompinit

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# python virtual env wrapper stuff:
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

export ROS_IP=ros-workstation-linux.local; export ROS_HOSTNAME=ros-workstation-linux.local; export ROS_MASTER_URI=http://ros-workstation-linux.local:11311

