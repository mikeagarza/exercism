import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    if let diameter = diameter, diameter >= 0.0, let slices = slices, slices > 0 {
        return Double.pi * pow(diameter / 2, 2) / Double(slices)
    } else {
        return nil
    }
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
    let sliceA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let sliceB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
    
    switch (sliceA, sliceB) {
    case let (valA?, valB?) where valA == valB:
        return "Neither slice is bigger"
    case let (valA?, valB?):
        return valA > valB ? "Slice A is bigger" : "Slice B is bigger"
    case (_?, nil): return "Slice A is bigger"
    case (nil, _?): return "Slice B is bigger"
    default: return "Neither slice is bigger"
    }
    
}
