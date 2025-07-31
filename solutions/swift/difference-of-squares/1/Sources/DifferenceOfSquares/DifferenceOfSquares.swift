//Solution goes in Sources

struct Squares {
    private var endValue: Int
    
    init(_ number: Int) {
        self.endValue = number
    }

    var squareOfSum: Int {
        let sum = (0...endValue).reduce(.zero, +)
        return sum * sum
    }

    var sumOfSquares: Int {
        (0...endValue).reduce(.zero, { a, b in a + (b * b)})
    }

    var differenceOfSquares: Int {
        self.squareOfSum - self.sumOfSquares
    }
}