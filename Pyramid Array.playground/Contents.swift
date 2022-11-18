import UIKit

func pyramid(_ n: Int) -> [[Int]] {
    var result = [[Int]]()
    if n > 0 {
        for x in 1...n {
            var miniArray = [Int]()
            for _ in 1...x {
                miniArray.append(1)
            }
            result.append(miniArray)
        }
    }
    return result
}

pyramid(3)
