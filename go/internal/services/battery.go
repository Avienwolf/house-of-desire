package services

import (
	"os/exec"
	"regexp"
)

func Battery() string {

	out, err := exec.Command("pmset", "-g", "batt").Output()

	if err != nil {
		return "--"
	}

	re := regexp.MustCompile(`(\d+)%`)
	match := re.FindStringSubmatch(string(out))

	if len(match) > 1 {
		return match[1] + "%"
	}

	return "--"

}
