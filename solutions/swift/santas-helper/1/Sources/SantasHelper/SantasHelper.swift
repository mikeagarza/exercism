import Foundation

func cartesianToPolar(_ cart: (x: Double, y: Double)) -> (r: Double, phi: Double) {
    let r = sqrt(pow(cart.x, 2) + pow(cart.y, 2))
    let phi = atan2(cart.y, cart.x)
    return (r, phi)
}

func combineRecords(
  production: (toy: String, id: Int, productLead: String),
  gifts: (Int, [String])
) -> (id: Int, toy: String, productLead: String, recipients: [String]) {
    return (production.id, production.toy, production.productLead, gifts.1)
}
