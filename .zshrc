# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
    . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
else
    export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
fi
# <<< conda initialize <<<

# fnm
FNM_PATH="/Users/azhar/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/azhar/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi
eval "$(fnm env --use-on-cd --shell zsh)"

# starship
eval "$(starship init zsh)"

# vim mode
bindkey -v

# nice zsh stuff
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# postgres path
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# fzf init
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fzf catppuccin-macchiato-transparent
export FZF_DEFAULT_OPTS=" \
--color=bg+:,bg:,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"

# fuck
eval $(thefuck --alias)

# yazi
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

# cool and useful scripts

# search and change directory
alias od="cd \`fd --type d --exclude '{node_modules,Applications,Library}' | fzf\`"

# search, change directory, and open a file in neovim
function of() {
    local file
    file=$(fd --type f --exclude '{node_modules,Applications,Library}' | fzf --preview 'bat --style=numbers --color=always {}')
    if [[ -n "$file" ]]; then
        local dir
        dir=$(dirname "$file")
        cd "$dir" && nvim "$(basename "$file")"
    fi
}

# quick extract
function extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2)   tar xjf "$1"                 ;;
            *.tar.gz)    tar xzf "$1"                 ;;
            *.tar.xz)    tar xf "$1"                  ;;
            *.zip)       unzip "$1"                   ;;
            *.rar)       7zz x "$1"                   ;;
            *.7z)        7zz x "$1"                   ;;
            *) echo "Unsupported file type"; return 1 ;;
        esac
    else
        echo "$1 is not a valid file."
    fi
}

export PATH="$PATH:$HOME/bin"
