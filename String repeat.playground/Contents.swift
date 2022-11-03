import UIKit

func repeatStr(_ n: Int, _ string: String) -> String {
    var result = ""
    if n == 0 {
        return ""
    }
    if n == 1 {
        return string
    }
    for _ in 1...n {
        result += string
    }
    return result
}

func repeatStr1(_ n: Int, _ string: String) -> String {
    return String(repeating: string, count: n)
}
