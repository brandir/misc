// Time-stamp: <2020-05-06 16:56:49 (elrond@rivendell) cpuinfo.go>

package main

import (
	"fmt"
	"os/exec"
)

func main() {
	cmd := "cat /proc/cpuinfo | egrep '^model name' | uniq | awk '{print substr($0, index($0,$4))}'"
	out, err := exec.Command("bash", "-c", cmd).Output()
	if err != nil {
		panic(err) // return fmt.Sprintf("Failed to execute command: %s", cmd)
	}
	fmt.Printf("%s", string(out))
}
