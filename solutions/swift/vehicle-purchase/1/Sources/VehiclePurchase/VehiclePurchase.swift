let term: Double = 5 * 12

func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let payment = price / term
    if (payment >= monthlyBudget + (monthlyBudget * 0.1)) {
        return "Darn! No \(vehicle) for me"
    } else if (payment > monthlyBudget) {
        return "I'll have to be frugal if I want a \(vehicle)"
    } else {
        return "Yes! I'm getting a \(vehicle)"
    }
}

func licenseType(numberOfWheels wheels: Int) -> String {
    if (wheels == 2 || wheels == 3) {
        return "You will need a motorcycle license for your vehicle"
    } else if (wheels == 4 || wheels == 6) {
        return "You will need an automobile license for your vehicle"
    } else if wheels == 18 {
        return "You will need a commercial trucking license for your vehicle"
    } else {
        return "We do not issue licenses for those types of vehicles"
    }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
    if (yearsOld < 3) {
        return Int(Double(originalPrice) * 0.8)
    } else if (yearsOld < 10) {
        return Int(Double(originalPrice) * 0.7)
    } else if (yearsOld >= 10) {
        return Int(Double(originalPrice) * 0.5)
    }
                
  fatalError("Please implement calculateResellPrice(originalPrice:yearsOld:) function")
}
