// Time-stamp: <2020-05-27 15:47:42 (jgalt@kali) slice_of_primes.go>

// prime_slice2.go
//
// get a slice of primes from 2 to a given value limit
//
// info on numeric limits:
// https://golang.org/ref/spec#Numeric_types
// int or int32, signed 32-bit integer (-2147483648 to 2147483647)
// uint64 is unsigned 64-bit integer (0 to 18446744073709551615)
//
// online play at:
// http://play.golang.org/p/sUT0Npic9y
//
// tested with Go version 1.4.2   by vegaseat  5may2015

package main

import "fmt"

// return a slice of primes from 2 to limit (inclusive)
// uses Sieve of Eratosthenes algorithm
func primes_dns(limit int) []int {
        limit = limit + 1
        // creates a slice of false with length of limit
        bools := make([]bool, limit)
        // implies up to the sqrt of limit
        for k := 2; k*k <= limit; k++ {
                if bools[k] != true {
                        for ix := k * k; ix < limit; ix += k {
                                bools[ix] = true
                        }
                }
        }
        // index of remaining False in bools = a prime number
        primes := []int{}
        for ix := 2; ix < limit; ix++ {
                if bools[ix] != true {
                        primes = append(primes, ix)
                }
        }
        return primes
}

func main() {
        fmt.Println("A slice of prime numbers:")
        prime_slice := primes_dns(67)
        fmt.Printf("%v\n", prime_slice)
        fmt.Println("----------------------------------------------")
        fmt.Println("Let's get a larger slice of 10,000,000 primes:")
        prime_slice2 := primes_dns(10000000)
        size := len(prime_slice2)
        fmt.Printf("There are %v primenumbers in the slice\n", size)
        // use slicing to look at select portions of the slice of primes
        // in Go slicing uses [start_index:end_index(exclusive)] syntax
        fmt.Printf("First 10 primes: %v\n", prime_slice2[0:10])
        fmt.Printf("Last 5 primes: %v\n", prime_slice2[size-5:size])
}
