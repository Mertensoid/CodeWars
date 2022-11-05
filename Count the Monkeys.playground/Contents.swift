import UIKit

func monkeyCount(_ n: Int) -> [Int] {
    var array = [Int]()
    (1...n).forEach({array.append($0)})
  return array
}

monkeyCount(5)
