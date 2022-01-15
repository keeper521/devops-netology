### 3 ###
* 
```
package main

import "fmt"

func main() {
    fmt.Print("Введите количество метров: ")
    var input float64
    fmt.Scanf("%f", &input)

    output := input / 0.3048

    fmt.Println("Футы: ", output)
}
```
* 
```
package main

import "fmt"

func main() {
    x := []int{48,96,86,68,57,82,63,70,37,34,83,27,19,97,9,17,}
    min := x[0]
    for _, v := range x {
        if (v < min) {
            min = v
        }
    }
    fmt.Println(min)
}
```
* 
```
package main

import "fmt"

func main() {
    x := 1
    for x <= 100 {
        x += 1
        if x%3 == 0 {
            fmt.Println(x)
            }
        }
}
```
