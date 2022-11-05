import UIKit

//Century From Year
func century(_ year: Int) -> Int {
    return year % 100 == 0 ? year / 100 : year / 100 + 1
}

//Beginner - Lost Without a Map
func maps(a : Array<Int>) -> Array<Int> {
return a.map({$0*2})

}

//Grasshopper - Summation
func summation(_ n: Int) -> Int {
    return (1...n).reduce(0, +)
}

//Multiplication table for number
func multi_table(_ number: Int) -> String {
    return Array(1...10).map({"\($0) * \(number) = \($0*number)"}).joined(separator: "\n")
}
