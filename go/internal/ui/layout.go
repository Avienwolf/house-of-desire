package ui

import "github.com/charmbracelet/lipgloss"

var (
	sidebarStyle = lipgloss.NewStyle().
			Width(20).
			Padding(1)

	contentStyle = lipgloss.NewStyle().
			Padding(1).
			Width(60)

	statusStyle = lipgloss.NewStyle().
			PaddingLeft(1)
)

func Layout(sidebar string, content string, status string) string {

	body := lipgloss.JoinHorizontal(
		lipgloss.Top,
		sidebarStyle.Render(sidebar),
		contentStyle.Render(content),
	)

	return lipgloss.JoinVertical(
		lipgloss.Left,
		body,
		statusStyle.Render(status),
	)

}
