# Path
fish_add_path ~/.local/bin

# Ensure system terminfo is always found (fixes conda env overriding clear)
set -gx TERMINFO_DIRS /usr/share/terminfo $TERMINFO_DIRS

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
alias c claude
alias dot 'cd ~/dotfiles/'
alias conf 'cd ~/.config/'
alias dev 'cd ~/dev/'

# zoxide (smart cd)
zoxide init fish | source

# fzf
fzf --fish | source

# Better history
set -g fish_history_max 100000

# Lazy-load conda (avoids ~200ms startup cost on every shell)
function conda
    functions --erase conda
    eval /opt/miniforge/bin/conda "shell.fish" "hook" | source
    conda $argv
end

