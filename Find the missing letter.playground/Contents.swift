import UIKit

func findMissingLetter(_ chArr: [Character]) -> Character {
    let alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var startIndex = 0
    if let i = alphabet.firstIndex(of: chArr.first ?? "a") {
        startIndex = i
    }
    var newArr = [Character]()
    for _ in 0...chArr.count {
        newArr.append(alphabet[startIndex])
        startIndex += 1
    }
    return newArr.filter({!chArr.contains($0)}).first ?? " "
}

findMissingLetter(["a","b","c","d","f"])
