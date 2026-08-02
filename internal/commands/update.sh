update() {

    info "Updating..."

    brew update
    brew upgrade
    brew cleanup

    exists uv && uv self update || true

    ok "Done."

}
