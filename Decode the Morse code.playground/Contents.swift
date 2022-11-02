import UIKit

func decodeMorse(_ morseCode: String) -> String {
    // your code here
    var newWordsArray = morseCode.components(separatedBy: "   ")
    var newCharArray = [[String]]()
    var resultString = ""
    for index in newWordsArray.indices {
        newCharArray.append(newWordsArray[index].components(separatedBy: " "))
    }
    for wordIndex in newCharArray.indices {
        if !resultString.isEmpty {
            resultString += " "
        }
        for charIndex in newCharArray[wordIndex].indices {
            resultString += MorseCode[newCharArray[wordIndex][charIndex]] ?? ""
        }
        
    }
    return resultString
}

