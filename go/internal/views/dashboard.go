package views

import (
	"fmt"

	"github.com/charmbracelet/lipgloss"

	"github.com/Avienwolf/house-of-desire/internal/services"
)

var card = lipgloss.NewStyle().
	Border(lipgloss.RoundedBorder()).
	Padding(1).
	Width(24)

func status(ok bool) string {
	if ok {
		return "✓ Running"
	}
	return "✗ Stopped"
}

func Dashboard() string {

	git := card.Render(fmt.Sprintf(
		"Git\n\n%s",
		services.GitStatus(),
	))

	aero := card.Render(fmt.Sprintf(
		"AeroSpace\n\n%s",
		status(services.Running("AeroSpace")),
	))

	karabiner := card.Render(fmt.Sprintf(
		"Karabiner\n\n%s",
		status(services.Running("karabiner")),
	))

	ollama := card.Render(fmt.Sprintf(
		"Ollama\n\n%s",
		status(services.Running("ollama")),
	))

	return lipgloss.JoinVertical(
		lipgloss.Left,

		"🏠 House of Desire",

		"",

		lipgloss.JoinHorizontal(
			lipgloss.Top,
			git,
			aero,
		),

		"",

		lipgloss.JoinHorizontal(
			lipgloss.Top,
			karabiner,
			ollama,
		),
	)
}
