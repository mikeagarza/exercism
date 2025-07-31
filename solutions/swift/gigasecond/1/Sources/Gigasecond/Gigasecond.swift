//Solution goes in Sources
import Foundation

struct Gigasecond: CustomStringConvertible {
    var parsedDate: Date?
    let dateFormatter = DateFormatter()

    init?(from: String) {
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)

        parsedDate = dateFormatter.date(from:from)
        if parsedDate == nil { return nil }
    }

    var description: String {
        let gigaDate = parsedDate!.addingTimeInterval(pow(10,9))
        return dateFormatter.string(from:gigaDate)
    }
}