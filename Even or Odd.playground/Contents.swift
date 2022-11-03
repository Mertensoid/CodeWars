import UIKit

func evenOrOdd(_ number:Int) -> String {
    if number % 2 == 0 || number % -2 == 0 {
        return "Even"
    } else {
        return "Odd"
    }
}
