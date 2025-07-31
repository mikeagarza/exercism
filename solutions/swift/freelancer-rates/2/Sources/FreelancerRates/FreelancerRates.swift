func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * 8.0
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  return (dailyRateFrom(hourlyRate: hourlyRate) * 22.0 * (1 - discount/100)).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  return (budget/monthlyRateFrom(hourlyRate: hourlyRate, withDiscount: discount) * 22).rounded(.down)
}
