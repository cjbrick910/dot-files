# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 

# Environment Variables
export CVSROOT="/home/lenin/downloads/bbgames/d1/routefree/bbgames/depot"
export QT_QPA_PLATFORMTHEME=qt5ct



# Aliases
alias ls="ls --color -F"

# Changing syntax highlighting styles
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[precommand]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[arg0]=fg=cyan
ZSH_HIGHLIGHT_STYLES[default]=fg=cyan
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=cyan
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=cyan


# Completion settings
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list ''
zstyle ':completion:*' max-errors 3 numeric
zstyle ':completion:*' menu select
zstyle ':completion:*' original true
zstyle ':completion:*' prompt 'corrections:'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/lenin/.zshrc'

autoload -Uz compinit
compinit

# History
HISTFILE=~/.cache/zsh-history
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# Prompt
PROMPT='%F{cyan}[%n@%m: %~$] '
