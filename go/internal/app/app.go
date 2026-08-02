package app

import (
	tea "github.com/charmbracelet/bubbletea"

	"github.com/Avienwolf/house-of-desire/internal/models"
	"github.com/Avienwolf/house-of-desire/internal/ui"
	"github.com/Avienwolf/house-of-desire/internal/views"
)

type Model struct {
	models.Model
}

func New() Model {
	return Model{
		Model: models.Model{
			Selected: 0,
		},
	}
}

func (m Model) Init() tea.Cmd {
	return Tick()
}

func (m Model) Update(msg tea.Msg) (tea.Model, tea.Cmd) {

	switch msg := msg.(type) {

	case tea.WindowSizeMsg:
		m.Width = msg.Width
		m.Height = msg.Height
		return m, nil

	case TickMsg:
		return m, Tick()

	case tea.KeyMsg:

		switch msg.String() {

		case "ctrl+c", "q":
			return m, tea.Quit

		case "up", "k":
			if m.Selected > 0 {
				m.Selected--
			}

		case "down", "j":
			if m.Selected < len(ui.SidebarItems)-1 {
				m.Selected++
			}

		}

	}

	return m, nil
}

func (m Model) View() string {

	return ui.Layout(
		ui.Sidebar(m.Selected),
		views.Dashboard(),
		ui.StatusBar(),
	)
}
