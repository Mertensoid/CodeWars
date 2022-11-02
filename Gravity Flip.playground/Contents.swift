import UIKit

func flip(_ direction: String, _ a: [Int]) -> [Int] {
    switch direction {
    case "L":
        return a.sorted(by: >)
    case "R":
        return a.sorted(by: <)
    default:
        return []
    }
}

print(flip("R", [3, 2, 1, 2]))
