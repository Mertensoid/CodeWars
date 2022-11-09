func triangular(_ n: Int) -> Int{
  n > 0 ? (1...n).reduce(0, +) : 0
}
