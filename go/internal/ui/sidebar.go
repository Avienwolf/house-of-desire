package ui

import "github.com/charmbracelet/lipgloss"

var SidebarItems = []string{
	"Dashboard",
	"Doctor",
	"Git",
	"AI",
	"Music",
	"Settings",
}

func Sidebar(selected int) string {

	active := lipgloss.NewStyle().
		Foreground(lipgloss.Color("#B22222")).
		Bold(true)

	inactive := lipgloss.NewStyle().
		Foreground(lipgloss.Color("#888888"))

	out := ""

	for i, item := range SidebarItems {

		if i == selected {
			out += active.Render("▌ "+item) + "\n"
		} else {
			out += inactive.Render("  "+item) + "\n"
		}

	}

	return out

}
