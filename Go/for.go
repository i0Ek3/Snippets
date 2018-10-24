package main

import "fmt"

func main() {
        for i := 0; i < 5; i++ {
                fmt.Printf("This is the %d iteration\n", i)
        }


        for i := 0; i < 5; i++ {
                for j := 1; j < i; j++ {
                        fmt.Println(j)    
                }
        }

        var h int = 3
        for h < 5 {
                h++
                fmt.Printf("Te far be lo i is now : %d\n", h)
        }
}


