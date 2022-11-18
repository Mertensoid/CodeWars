import UIKit

func camelCase(_ str: String) -> String {
    let array = str.components(separatedBy: " ")
    var result = ""
    for word in array {
        result += word.capitalized
    }
    return result
}

camelCase("hello world")
