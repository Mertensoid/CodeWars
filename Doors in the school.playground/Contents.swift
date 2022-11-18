import UIKit

func doors(_ n: Int) -> Int {
    var doors: [Bool] = []
    for _ in 1...n {
        doors.append(false)
    }
    for index in 1...n {
        var i = index
        while i <= n {
            doors[i - 1].toggle()
            i += index
        }
    }
//    for index in 1...n {
//        for door in 1...n {
//            if door % index == 0 {
//                doors[door - 1].toggle()
//            }
//        }
//    }
    return doors.filter({ $0 == true }).count
}

doors(5)
doors(10)
doors(100)
