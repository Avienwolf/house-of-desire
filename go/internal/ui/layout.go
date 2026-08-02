package ui

func Layout(sidebar string, content string, status string) string {

	return sidebar +
		"\n\n" +
		content +
		"\n\n" +
		status

}
