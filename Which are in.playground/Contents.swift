import UIKit

func inArray(_ a1: [String], _ a2: [String]) -> [String] {
    var result = [String]()
    var counter = 0
    for item in a1 {
        counter = 0
        for check in a2 {
            if check.contains(item) && !result.contains(item) {
                counter += 1
            }
        }
        if counter > 0 {
            result.append(item)
            counter = 0
        }
    }
    return result.sorted(by: <)
}

var a1 = ["live", "arp", "strong"]
        var a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
inArray(a1, a2)
