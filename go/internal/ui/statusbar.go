package ui

import "github.com/charmbracelet/lipgloss"

var status = lipgloss.NewStyle().
	Foreground(lipgloss.Color("#666"))

func StatusBar() string {

	return status.Render(
		"↑↓/jk Navigate   Enter Open   / Search   q Quit",
	)

}
