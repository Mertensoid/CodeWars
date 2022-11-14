import Foundation

//let names = "COLIN,AMANDBA,AMANDAB,CAROL,PauL,JOSEPH"
//let weights = [1, 4, 4, 5, 2, 1]

let names = "Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin"
let weights = [4, 2, 1, 4, 3, 1, 2]


func rank(_ st: String, _ we: [Int], _ n: Int) -> String {
    if st.isEmpty {
        return "No participants"
    }
    let characters: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    let names = st.lowercased().components(separatedBy: ",")

    var soms = [(String, Int)]()
    for index in names.indices {
        var som = (names[index] as String).count
        for char in names[index] {
            if characters.contains(char) {
                som = som + (characters.firstIndex(of: char) ?? 0) + 1
            }
        }
        if index < we.count {
            som *= we[index]
        }
        soms.append((names[index], som))
    }
    soms = soms.sorted(by: {$0.0 < $1.0}).sorted(by: {$0.1 > $1.1})
    print(soms)
    if names.count < n {
        return "Not enough participants"
    } else {
        return st.components(separatedBy: ",")[names.firstIndex(of: soms[n-1].0) ?? 0]
    }
}

rank(names, weights, 4)
