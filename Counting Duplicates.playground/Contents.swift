import UIKit

func countDuplicates(_ s:String) -> Int {
    var string = s.lowercased()
    var someSet = Set<Character>()
    var counter = 0
    for char in string {
        counter = 0
        for check in string {
            if check == char {
                counter += 1
            }
        }
        if counter > 1 {
            someSet.insert(char)
        }
    }
    return someSet.count
}

print(countDuplicates("indivisibility"))
