import UIKit

func sum_str(_ a:String, _ b:String) -> String {
  let aa = Int32(a) ?? 0
  let bb = Int32(b) ?? 0
  let sum = aa + bb
  return "\(sum)"
}
