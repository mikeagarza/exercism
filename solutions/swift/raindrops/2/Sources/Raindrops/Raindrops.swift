//Solution goes in Sources

struct Raindrops {
    var value: Int

    init (_ number: Int) {
        value = number
    }
   
    var sounds: String {
        get {
            var sound: String = ""
            if value % 3 == 0 { sound += "Pling" }
            if value % 5 == 0 { sound += "Plang" }
            if value % 7 == 0 { sound += "Plong" }
            if sound.isEmpty { sound = String(value) }
            return sound
        }
    }
}
