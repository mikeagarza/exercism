func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
    return birdsPerDay.reduce(0, +)
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
    guard weekNumber > 0 else { return 0 }
    let start = (weekNumber - 1) * 7
    return birdsPerDay.dropFirst(start).prefix(7).reduce(0, +)
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
    birdsPerDay.enumerated().map { index, value in
        index.isMultiple(of: 2) ? value + 1 : value
    }
}
