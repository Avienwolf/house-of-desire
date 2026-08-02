package services

import (
	"os/exec"
	"strings"
)

func Memory() string {

	out, err := exec.Command("memory_pressure").Output()

	if err != nil {
		return "--"
	}

	lines := strings.Split(string(out), "\n")

	if len(lines) > 0 {
		return lines[0]
	}

	return "--"

}
