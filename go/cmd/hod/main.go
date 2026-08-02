package main

import (
	"log"

	tea "github.com/charmbracelet/bubbletea"

	"github.com/Avienwolf/house-of-desire/internal/app"
)

func main() {
	p := tea.NewProgram(app.New())

	if _, err := p.Run(); err != nil {
		log.Fatal(err)
	}
}
