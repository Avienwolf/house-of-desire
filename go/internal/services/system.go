package services

import (
	"os/exec"
	"strings"
)

func Running(process string) bool {
	err := exec.Command("pgrep", "-f", process).Run()
	return err == nil
}

func GitStatus() string {
	cmd := exec.Command("git", "status", "--porcelain")
	out, err := cmd.Output()

	if err != nil {
		return "Unknown"
	}

	if strings.TrimSpace(string(out)) == "" {
		return "✓ Clean"
	}

	return "● Dirty"
}
