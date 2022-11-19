import UIKit

func diamond(_ size: Int) -> String? {
    if size % 2 == 0 || size <= 0 {
        return "nil"
    } else if size == 1 {
        return "*\n"
    } else {
        var result = ""
        for index in (0 ... size / 2) {
            let spaces = size / 2 - index
            for _ in 0..<spaces {
                result += " "
            }
            let stars = index * 2 + 1
            for _ in 1...stars {
                result += "*"
            }
            result += "\n"
        }
        for index in (1 ... size / 2) {
            for _ in 0..<index {
                result += " "
            }
            let stars = size - 2 * index
            for _ in 1...stars {
                result += "*"
            }
            result += "\n"
        }
        return result
    }
}

print(diamond(1))
