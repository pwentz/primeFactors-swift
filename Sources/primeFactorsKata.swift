func primeFactors(of number: Int) -> [Int] {

  func getPrimeFactors() -> [Int] {
    guard number >= 2 else {
      return []
    }

    let firstFactor = getFirstFactor()
    var _primeFactors = [firstFactor]

    let inputIsNotPrime = number != firstFactor

    if inputIsNotPrime {
      let remainingFactor = number / firstFactor
      _primeFactors += primeFactors(of: remainingFactor)
    }

    return _primeFactors
  }

  func getFirstFactor() -> Int {
    var firstFactor = number

    for i in 2...number {
      let isAFactor = number % i == 0

      if isAFactor {
        firstFactor = i
        break
      }
    }

    return firstFactor
  }

  return getPrimeFactors()
}
