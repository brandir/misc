// Time-stamp: <2020-05-04 17:38:18 (elrond@rivendell) fib.go>

// Calculate Fibonacci numbers using channels.

package main

import "fmt"

func dup3(in <- chan int) (<-chan int, <-chan int, <-chan int) {
	a, b, c := make(chan int, 2), make(chan int, 2), make(chan int, 2)
	go func() {
		for {
			x := <-in
			a <- x
			b <- x
			c <- x
		}
	}()
	return a, b, c
}

func fib() <-chan int {
	x := make(chan int, 2)
	a, b, out := dup3(x)
	go func() {
		x <- 0
		x<- 1
		<-a
		for {
			x <- <-a+<-b
		}
	}()
	return out
}

func main() {
	x := fib()
	cnt := 0
	for i := 0; i < 90; i++ {
		cnt++
		fmt.Printf("%d %v\n", cnt, <-x)
	}
}
