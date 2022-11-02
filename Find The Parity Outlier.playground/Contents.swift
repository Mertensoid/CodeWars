import UIKit

func findOutlier(_ array: [Int]) -> Int {
    if array.filter( {$0 % 2 == 0} ).count == 1 {
        return array.filter( {$0 % 2 == 0} ).first ?? 0
    } else {
        return array.filter( {$0 % 2 == 1 || $0 % 2 == -1} ).first ?? 0
    }
}
