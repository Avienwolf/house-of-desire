# ============================================================
# Files & Directories
# ============================================================

# Create directory and enter it
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Backup a file
backup() {
    cp "$1" "$1.bak"
}

# Extract archives
extract() {
    [[ -f "$1" ]] || {
        echo "File not found."
        return 1
    }

    case "$1" in
        *.tar.bz2) tar xjf "$1" ;;
        *.tar.gz)  tar xzf "$1" ;;
        *.tar.xz)  tar xJf "$1" ;;
        *.tar)     tar xf "$1" ;;
        *.zip)     unzip "$1" ;;
        *.7z)      7z x "$1" ;;
        *.rar)     unrar x "$1" ;;
        *) echo "Unsupported archive." ;;
    esac
}

# ============================================================
# Navigation
# ============================================================

dot() {
    cd ~/.config
}

proj() {
    cd ~/Projects
}

# ============================================================
# Edit Configs
# ============================================================

edit-zsh() {
    code ~/.zshrc
}

edit-aliases() {
    code ~/.config/zsh/aliases.zsh
}

edit-functions() {
    code ~/.config/zsh/functions.zsh
}

# ============================================================
# Homebrew
# ============================================================

brew-clean() {
    brew update &&
    brew upgrade &&
    brew autoremove &&
    brew cleanup
}

# ============================================================
# Git
# ============================================================

git-root() {
    cd "$(git rev-parse --show-toplevel)"
}

# ============================================================
# System
# ============================================================

big() {
    du -sh ./* 2>/dev/null | sort -h
}

killp() {
    pkill -f "$1"
}