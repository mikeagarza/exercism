//Solution goes in Sources
extension Array where Element == Int {
    func accumulate(_ function: (Int) -> Int) -> [Int] {
        var new: [Int] = []
        for item in self {
            new.append(function(item))
        }
        return new
    }
}

extension Array where Element == String {
    func accumulate(_ function: (String) -> String) -> [String] {
        var new: [String] = []
        for item in self {
            new.append(function(item))
        }
        return new
    }

    func accumulate(_ function: (String) -> [String]) -> [[String]] {
        var new: [[String]] = []
        for item in self {
            new.append(function(item))
        }
        return new
    }
}