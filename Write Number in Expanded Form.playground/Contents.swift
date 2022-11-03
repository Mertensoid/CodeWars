import UIKit

func expandedForm(_ num: Int) -> String {
    var number = num
    var digits = [Int]()
    var result = ""
    while number > 0 {
        digits.insert(number % 10, at: 0)
        number = number / 10
    }
    for index in digits.indices {
        if digits[index] > 0 {
            let res = (pow(10, digits.count-index-1) as NSDecimalNumber).intValue
            let num = digits[index] * res
            if index == 0 {
                result = result + "\(num)"
            } else {
                result = result + " + \(num)"
            }
            
        }
    }
  return result
}

expandedForm(10305)
