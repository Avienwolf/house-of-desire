doctor() {

    info "House of Desire"

    for cmd in brew git gh ghostty aerospace ollama fastfetch atuin; do
        exists "$cmd" && ok "$cmd" || fail "$cmd"
    done

    running AeroSpace && ok "AeroSpace running" || warn "AeroSpace stopped"
    running karabiner && ok "Karabiner running" || warn "Karabiner stopped"
    running ollama && ok "Ollama running" || warn "Ollama stopped"

}
