enum Drink {
    case beer, soda, water, shot, mixed, fancy, frozen
}

extension Drink {
    var preparationTime: Double {
        switch self {
        case .beer, .soda, .water:
            return 0.5
        case .shot:
            return 1.0
        case .mixed:
            return 1.5
        case .fancy:
            return 2.5
        case .frozen:
            return 3.0
        }
    }
}

extension Drink {
    init?(from string: String) {
        switch string.lowercased() {
        case "beer": self = .beer
        case "soda": self = .soda
        case "water": self = .water
        case "shot": self = .shot
        case "mixed drink": self = .mixed
        case "fancy drink": self = .fancy
        case "frozen drink": self = .frozen
        default: return nil
        }
    }
}

func timeToPrepare(drinks: [String]) -> Double {
    drinks.reduce(0.0) { total, name in
        if let drink = Drink(from: name) {
            return total + drink.preparationTime
        } else {
            return total
        }
    }
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    if needed <= 0 { return 0 }
    var wedgesMade = 0
    var limesUsed = 0
    for lime in limes {
        let yield: Int
        switch lime.lowercased() {
        case "small": yield = 6
        case "medium": yield = 8
        case "large": yield = 10
        default: yield = 0
        }
        wedgesMade += yield
        limesUsed += 1
        if wedgesMade >= needed { break }
    }
    return limesUsed
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    var timeRemaining = Double(minutesLeft)
    var queue = remainingOrders
    while timeRemaining > 0, let first = queue.first {
        let orderTime = timeToPrepare(drinks: first)
        if orderTime <= timeRemaining {
            timeRemaining -= orderTime
            queue.removeFirst()
        } else {
            if (timeRemaining > 0) {
                queue.removeFirst()
                timeRemaining = 0
            }
            break
        }
    }
    return queue
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
    let beerTimes = orders.filter { $0.drink.lowercased() == "beer" }.map { $0.time }
    let sodaTimes = orders.filter { $0.drink.lowercased() == "soda" }.map { $0.time }

    let beerResult: (first: String, last: String, total: Int)? =
        beerTimes.isEmpty ? nil : (beerTimes.first!, beerTimes.last!, beerTimes.count)

    let sodaResult: (first: String, last: String, total: Int)? =
        sodaTimes.isEmpty ? nil : (sodaTimes.first!, sodaTimes.last!, sodaTimes.count)

    return (beer: beerResult, soda: sodaResult)
}
