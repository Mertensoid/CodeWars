import UIKit

func sumOfMinimums(_ numbers: [[Int]]) -> Int {
    var sum: Int = 0
    for array in numbers {
        if let number = array.sorted(by: <).first {
            sum += number
        }
    }
    return sum
}

