# Path
fish_add_path ~/.local/bin

# Starship prompt
starship init fish | source

# Aliases
alias ls 'eza --color=auto --icons'
alias ll 'eza -lah --git --icons'
alias la 'eza -A --color=auto --icons'
alias grep 'grep --color=auto'
alias cat 'bat --paging=never'
alias .. 'cd ..'
alias ... 'cd ../..'
alias nvim nvim
alias c claude
alias dot 'cd ~/dotfiles/'
alias conf 'cd ~/.config/'

# zoxide (smart cd)
zoxide init fish | source

# fzf
fzf --fish | source

# Better history
set -g fish_history_max 100000
