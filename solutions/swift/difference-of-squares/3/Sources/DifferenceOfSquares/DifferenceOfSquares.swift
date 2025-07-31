//Solution goes in Sources

struct Squares {
    private var _squareOfSum : Int
    private var _sumOfSquares: Int
    
    init(_ number: Int) {
        let sum = (0...number).reduce(.zero, +)
        self._squareOfSum = sum * sum

        self._sumOfSquares = (0...number).reduce(.zero, { a, b in a + (b * b)})
    }

    var squareOfSum: Int {
        self._squareOfSum
    }

    var sumOfSquares: Int {
        self._sumOfSquares
    }

    var differenceOfSquares: Int {
        self.squareOfSum - self.sumOfSquares
    }
}