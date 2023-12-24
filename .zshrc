# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#alias gfortran="gfortran -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib"

#POWERLEVEL9K_ROOT_ICON=$'\uF198'

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# export PATH="/anaconda3/bin":$PATH


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/linchunho/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/linchunho/opt/miniconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/linchunho/opt/miniconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/linchunho/opt/miniconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<


#if whence dircolors >/dev/null; then
#  eval "$(dircolors -b)"
#  zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#  alias ls='ls --color'
#else
#  export CLICOLOR=1
  # zstyle ':completion:*:default' list-colors ''
	#zstyle ":completion:*:default" list-colors ${(s.:.)LS_COLORS} "ma=48;5;153;1"
#	zstyle ':completion:*' list-colors '=(#b)(--[^ ]#)(*)=38;5;220;1=38;5;216'
#fi


eval $(gdircolors -b $HOME/.dircolors)
if [ -n “$LS_COLORS” ]; then
# list-colors ${(s.:.)LS_COLORS}
fi

# test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
		git
		zsh-completions
		zsh-autosuggestions
		zsh-syntax-highlighting
)

# if I want to change the zsh-syntax-highlighting
# use the below link:
# https://github.com/zsh-users/zsh-syntax-highlighting/issues/464

#bundler foober

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh


#zstyle ':completion:*' list-colors ''
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true

#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="$ "

# POWERLEVEL9K_CONTEXT_TEMPLATE='你想要顯示的內容'
#POWERLEVEL9K_CONTEXT_TEMPLATE='1chooo'

# 在 Command Line 左邊想要顯示的元件，以空格分隔
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(anaconda context dir dir_writable vcs)
# 在 Command Line 右邊想要顯示的元件，同樣以空格分隔
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status time)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(battery ram status)

# POWERLEVEL9K_DIR_PATH_ABSOLUTE
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
# POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_last
#POWERLEVEL9K_SHORTEN_DELIMITER=..


#POWERLEVEL9K_ANACONDA_BACKGROUND='024'
#POWERLEVEL9K_ANACONDA_FOREGROUND='231'

# Context 元件的顏色
#POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='017'
#POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='231'

# Ram 元件的顏色
#POWERLEVEL9K_RAM_BACKGROUND='025'
#POWERLEVEL9K_RAM_FOREGROUND='231'

# Dir 元件的顏色
#POWERLEVEL9K_DIR_HOME_BACKGROUND='248'
#POWERLEVEL9K_DIR_HOME_FOREGROUND='000'
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='248'
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='000'
#POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='217'
#POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='000'
#POWERLEVEL9K_DIR_ETC_BACKGROUND='160'
#POWERLEVEL9K_DIR_ETC_FOREGROUND='231'

# Status 元件的顏色
#POWERLEVEL9K_STATUS_OK_BACKGROUND='039'
#POWERLEVEL9K_STATUS_OK_FOREGROUND='000'
#source /Users/linchunho/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Battery color
#POWERLEVEL9K_BATTERY_CHARGING="yellow"
#POWERLEVEL9K_BATTERY_CHARGED="green"
# POWERLEVEL9K_BATTERY_DISCONNECTED="red"
#POWERLEVEL9K_BATTERY_DISCONNECTED=$DEFAULT_COLOR
#POWERLEVEL9K_BATTERY_LOW_THRESHOLD=10
#POWERLEVEL9K_BATTERY_LOW_COLOR="red"
#POWERLEVEL9K_BATTERY_VERBOSE=false
# POWERLEVEL9K_BATTERY_STAGES="▁▂▃▄▅▆▇█"

# POWERLEVEL9K_DIR_PATH_SEPARATOR="%c"

#POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='red'
#POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='blue'
#POWERLEVEL9K_BATTERY_DISCONNECTED='blue'
#POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
#POWERLEVEL9K_BATTERY_LOW_COLOR='red'
#POWERLEVEL9K_BATTERY_VERBOSE=false



# git aliases
alias ga="git add ."
alias gp="git push"
alias gpl="git pull"

# open VSCode
alias code="open -a 'Visual Studio Code' ."

# conda aliases
alias condapy37="conda activate py37"
alias condade="conda deactivate"


# alias cppc="clang++ -std=c++17 -stdlib=libc++ -o" 

alias la="ls -al"

P9K_DIR_PATH_ABSOLUTE=""

P9K_DIR_SHORTEN_DELIMITER=""

P9K_SHORTEN_STRATEGY="turncate_to_last"


# fast to goto repo

alias cg="cd ~/Developer/GitHubRepo"
alias cdd="cd ~/Developer"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# alias python=/usr/bin/python3
# alias python=/usr/bin/python3


export PATH="/usr/local/mysql/bin:$PATH"

#alias python3.9="/Library/Frameworks/Python.framework/Versions/3.9/bin/python3"
#alias python3="/Library/Frameworks/Python.framework/Versions/3.10/bin/python3"


#typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
#typeset -g POWERLEVEL9K_INSTANT_PROMPT=off


export PATH="/Users/$USER/.shellScripts/zsh:$PATH"


[ -d "$HOME/Library/Android/sdk" ] && ANDROID_HOME=$HOME/Library/Android/sdk || ANDROID_HOME=$HOME/Android/Sdk
echo "export ANDROID_HOME=$ANDROID_HOME" >> ~/`[[ $SHELL == *"zsh" ]] && echo '.zshenv' || echo '.bash_profile'`

echo "export PATH=$ANDROID_HOME/platform-tools:\$PATH" >> ~/`[[ $SHELL == *"zsh" ]] && echo '.zshenv' || echo '.bash_profile'`


# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/linchunho/Developer/chatgpt-mac/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/linchunho/Developer/chatgpt-mac/node_modules/tabtab/.completions/electron-forge.zsh

# Flutter
export PATH="/Users/linchunho/Developer/flutter/bin:$PATH"

# Android
export ANDROID_SDK_ROOT="/Users/linchunho/Library/Android/sdk"

# GO
export PATH="$PATH:/usr/local/go/bin"

alias docker="/Applications/Docker.app/Contents/Resources/bin/docker"
#alias python="/Library/Frameworks/Python.framework/Versions/3.10/bin/python3"
export PATH="$PATH:/USR/LOCAL/opt/icu4c/bin"
export PATH="$PATH:/USR/LOCAL/opt/icu4c/sbin"


# edit ngrok.yml
alias vingrok="vi /Users/linchunho/Library/Application\ Support/ngrok/ngrok.yml"
