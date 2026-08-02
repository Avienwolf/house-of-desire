save() {

    git -C "$ROOT" add .

    if git -C "$ROOT" diff --cached --quiet; then
        warn "Nothing to commit."
        return
    fi

    git -C "$ROOT" commit -m "${1:-Update}"
    git -C "$ROOT" push

}
