package main

import (
	"fmt"

	"github.com/gobuffalo/packr"
)

func main() {
	box := packr.NewBox("./mybox")
	str, err := box.MustString("hello.txt")
	if err != nil {
		panic(err)
	}
	fmt.Println(str)
}
