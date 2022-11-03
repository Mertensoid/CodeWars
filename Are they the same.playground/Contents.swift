import UIKit

func comp(_ a: [Int], _ b: [Int]) -> Bool {
    let arrayA = a.map({$0*$0}).sorted(by: <)
    print(arrayA)
    
    let arrayB = b.sorted(by: <)
    print(arrayB)
    return arrayA == arrayB
}

var a1 = [121, 144, 19, 161, 19, 144, 19, 11]
print(a1)
var a2 = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
print(a2)
print(comp(a1, a2))
a1 = [121, 144, 19, 161, 19, 144, 19, 11]
a2 = [11*21, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
print(comp(a1, a2))
