import UIKit

Int8.min
Int8.max

let a: Int8 = Int8.max
let B: Int8 = a &+ 1

let c: Int8 = Int8.min
let d: Int8 = c &- 1

let e: Int8 = Int8.max &* 2

let a2 = 12
let b2 = 34

a2 == b2

"swift" == "Swift"

let c2 = 12.34

a2 != b2

a2 > b2

"swift" > "Swift"

a2 >= B

7 > 7

7 <= 7

!true

let a3 = 12
let b3 = 34

!(a3 < b3)

a3 > 30 && b3 % 2 == 0

true && true
true && false

a3 > 30 || b3 % 2 == 0

true || true
true || false
false || false

let hour = 12

hour < 12 ? "am" : "pm"

if hour < 12 {
    "am"
} else {
    "pm"
}

hour < 11 ? "Good Morning" : hour < 17 ? "Good Afternoon" : "Good Evening"

(1 ... 10).reversed()
12.34 ... 56.78

var sum = 0
for num in 1 ... 10 {
    num
    sum += num
}
sum


