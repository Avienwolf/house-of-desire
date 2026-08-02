package app

import tea "github.com/charmbracelet/bubbletea"

type Window struct {
	Width  int
	Height int
}

func (m Model) handleWindow(msg tea.WindowSizeMsg) Model {
	m.Width = msg.Width
	m.Height = msg.Height
	return m
}
