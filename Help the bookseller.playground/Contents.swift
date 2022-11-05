import UIKit

func stockList(_ listOfArt: [String], _ listOfCat: [String]) -> String {
    if listOfArt.isEmpty || listOfCat.isEmpty {
        return ""
    }
    var array = [String]()
    for letter in listOfCat {
        var counter = 0
        for book in listOfArt {
            if book.components(separatedBy: " ").first?.first == Character(letter) {
                let number: Int = Int(book.components(separatedBy: " ").last ?? "0") ?? 0
                counter += number
            }
        }
        array.append("(\(letter) : \(counter))")
    }
    return array.joined(separator: " - ")
}

let b = ["BBAR 150", "CDXE 515", "BKWR 250", "BTSQ 890", "DRTY 600"]
let c = ["A", "B", "C", "D"]
stockList(b, c)
