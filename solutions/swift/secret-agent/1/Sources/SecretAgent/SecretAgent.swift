func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  return { password in 
    if password == "P455w0rd" { return secret }
    else { return "Sorry. No hidden secrets here."}
  }
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let first = f(room)
  let second = f(first)
  let third = f(second)
  return (first, second, third)
}

func makeCombo(_ x: Int) -> Int {
  (x * 13) % 256
}