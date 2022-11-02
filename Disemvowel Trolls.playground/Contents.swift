import UIKit

func disemvowel(_ s: String) -> String {
    let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var resultString = ""
    for char in s {
        if !vowels.contains(char) {
            resultString.append(char)
        }
    }
    return resultString
}
