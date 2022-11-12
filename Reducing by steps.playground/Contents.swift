import UIKit

func som(_ x: Int, _ y: Int) -> Int {
    x + y
}
func maxi(_ x: Int, _ y: Int) -> Int {
    x > y ? x : y
}
func mini(_ x: Int, _ y: Int) -> Int {
    x < y ? x : y
}
func gcdi(_ x: Int, _ y: Int) -> Int {
    var a = max(abs(x), abs(y))
    var b = min(abs(x), abs(y))
    var c = 0
    while a != b {
        c = a - b
        a = max(b, c)
        b = min(b, c)
    }
    return a
}
func lcmu(_ a: Int, _ b: Int) -> Int {
    return abs(a) * abs(b) / gcdi(a, b)
}

// replace the dots with a declaration of function
func operArray(_ someFunc: (Int, Int) -> Int, _ a: [Int], _ iniVal: Int) -> [Int] {
    var result = [Int]()
    var c = iniVal
    for digit in a {
        c = someFunc(digit, c)
        result.append(c)
    }
    return result
}

let a = [18, 69, -90, -78, 65, 40]
operArray(gcdi, a, a[0])
operArray(lcmu, a, a[0])
operArray(som, a, 0)
operArray(mini, a, a[0])
operArray(maxi, a, a[0])
