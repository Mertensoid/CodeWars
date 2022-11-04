import UIKit
func solution(_ num: Int) -> Int {
    var array = [Int]()
    for number in 0..<num {
        array.append(number)
    }
    print(array)
  return array.filter({$0 % 3 == 0 || $0 % 5 == 0}).reduce(0, +)
}

print(solution(10))
solution(20)
solution(200)
