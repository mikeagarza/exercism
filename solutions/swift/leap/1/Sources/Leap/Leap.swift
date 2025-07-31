//Solution goes in Sources

struct Year {
    var calendarYear: Int

    var isLeapYear: Bool {
        get {
            return (calendarYear % 4 == 0) && ((calendarYear % 100 != 0) || (calendarYear % 400 == 0)) 
        }
    }
}
