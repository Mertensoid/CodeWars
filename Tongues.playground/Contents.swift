//Tongues
//
//Gandalf's writings have long been available for study, but no one has yet figured out what language they are written in. Recently, due to programming work by a hacker known only by the code name ROT13, it has been discovered that Gandalf used nothing but a simple letter substitution scheme, and further, that it is its own inverse|the same operation scrambles the message as unscrambles it.
//
//This operation is performed by replacing vowels in the sequence 'a' 'i' 'y' 'e' 'o' 'u' with the vowel three advanced, cyclicly, while preserving case (i.e., lower or upper).
//
//Similarly, consonants are replaced from the sequence 'b' 'k' 'x' 'z' 'n' 'h' 'd' 'c' 'w' 'g' 'p' 'v' 'j' 'q' 't' 's' 'r' 'l' 'm' 'f' by advancing ten letters.
//
//So for instance the phrase 'One ring to rule them all.' translates to 'Ita dotf ni dyca nsaw ecc.'
//
//The fascinating thing about this transformation is that the resulting language yields pronounceable words. For this problem, you will write code to translate Gandalf's manuscripts into plain text.
//
//Your job is to write a function that decodes Gandalf's writings.
//
//Input
//
//The function will be passed a string for the function to decode. Each string will contain up to 100 characters, representing some text written by Gandalf. All characters will be plain ASCII, in the range space (32) to tilde (126).
//
//Output
//
//For each string passed to the decode function return its translation.
import UIKit

func tongues(_ code: String) -> String {
    let vowels: [Character] = ["a", "i", "y", "e", "o", "u"]
    let bigVowels: [Character] = ["A", "I", "Y", "E", "O", "U"]
    let consonants: [Character] = ["b", "k", "x", "z", "n", "h", "d", "c", "w", "g", "p", "v", "j", "q", "t", "s", "r", "l", "m", "f"]
    let bigConsonants: [Character] = ["B", "K", "X", "Z", "N", "H", "D", "C", "W", "G", "P", "V", "J", "Q", "T", "S", "R", "L", "M", "F"]
    var result = ""
    var position = 0
    for char in code {
        if vowels.contains(char) {
            position = (vowels.firstIndex(of: char) ?? 0) - 3
            if position < 0 {
                position += vowels.count
            }
            result.append(vowels[position])
        } else if consonants.contains(char) {
            position = (consonants.firstIndex(of: char) ?? 0) - 10
            if position < 0 {
                position += consonants.count
            }
            result.append(consonants[position])
        } else if bigVowels.contains(char) {
            position = (bigVowels.firstIndex(of: char) ?? 0) - 3
            if position < 0 {
                position += bigVowels.count
            }
            result.append(bigVowels[position])
        } else if bigConsonants.contains(char) {
            position = (bigConsonants.firstIndex(of: char) ?? 0) - 10
            if position < 0 {
                position += bigConsonants.count
            }
            result.append(bigConsonants[position])
        } else {
            result.append(char)
        }
    }
    return result
}

tongues("Ita dotf ni dyca nsaw ecc.")
