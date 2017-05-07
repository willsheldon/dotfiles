# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(aws brew brew-cask cp docker fasd git-flow gitfast history python osx nyan rsync sublime sudo tmux virtualenv virtualenvwrapper xcode zsh_reload )

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/Users/will/bin:/usr/local/opt/gnu-tar/libexec/gnubin:$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/android-sdk/bin:/usr/local/sbin"
# export MANPATH="/usr/local/man:$MANPATH"
MANPATH="i/usr/local/man:/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Android stuffs.
export ANDROID_HOME=/usr/local/opt/android-sdk

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
#  export EDITOR='mvim'
   export EDITOR="$HOME/bin/mate -w"
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ql='qlmanage -p "$@" &>>| /dev/null'
alias wiki='if [[ -n `netstat -an | grep 127.0.0.1.4443` ]] then open https://local.appno.net:4443 ; else ssh vanops.appno.net -fnN  -L 4443:localhost:4443 && open https://local.appno.net:4443; fi'

#AWS cli completion
#source /usr/local/share/zsh/site-functions/_aws

# The next line updates PATH for the Google Cloud SDK.
#source '/Users/will/google-cloud-sdk/path.zsh.inc'

# The next line enables bash completion for gcloud.
#source '/Users/will/google-cloud-sdk/completion.zsh.inc'

# set kubernates control for gcloud
export KUBECONFIG=/Users/will/.config/gcloud/kubernetes/kubeconfig

# bc more decimal points
alias bc='bc -l'

#github brew access token: https://github.com/settings/tokens/new?scopes=&description=Homebrew
export HOMEBREW_GITHUB_API_TOKEN="e001017a2eeed33a93da9cb022d9694f49b0205c"