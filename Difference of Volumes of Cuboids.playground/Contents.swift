func findDifference(_ a: [Int], _ b: [Int]) -> Int {
  return a.reduce(1, *) > b.reduce(1, *) ? a.reduce(1, *) - b.reduce(1, *) : b.reduce(1, *) - a.reduce(1, *)
}
