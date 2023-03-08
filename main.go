package main

import "fmt"

func main(){
	fmt.Println("Привет мир")
}

func Fibonaci(Input: int) int {
	if input < 1{
		return input
	}

	return Fibonaci(Input - 1)
}