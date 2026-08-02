package ui

import "github.com/charmbracelet/lipgloss"

var Title = lipgloss.NewStyle().
	Bold(true).
	Foreground(lipgloss.Color("#B22222"))

func Header() string {
	return Title.Render("🏠 House of Desire")
}
