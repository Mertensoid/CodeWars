import UIKit

func perimeter(_ n: UInt64) -> UInt64 {
    var array: [UInt64] = [1, 1]
    for index in 2...Int(n) {
        array.append(array[index - 1] + array[index - 2])
    }
    return array.reduce(0, +) * 4
}

perimeter(7)
