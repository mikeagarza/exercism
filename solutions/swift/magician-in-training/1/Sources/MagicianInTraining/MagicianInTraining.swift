func getCard(at index: Int, from stack: [Int]) -> Int {
    return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    guard index >= 0 && index < stack.count else {
            print("Index out of bounds")
            return stack
        }
        var modifiedStack = stack
        modifiedStack[index] = newCard
        return modifiedStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var modifiedStack = stack
    modifiedStack.append(newCard)
    return modifiedStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    guard index >= 0 && index < stack.count else {
        print("Index out of bounds")
        return stack
    }
    var modifiedStack = stack
    modifiedStack.remove(at: index)
    return modifiedStack
}

func removeTopCard(_ stack: [Int]) -> [Int] {
    var modifiedStack = stack
    if !modifiedStack.isEmpty { modifiedStack.removeLast() }
    return modifiedStack
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
    var modifiedStack = stack
    modifiedStack.insert(newCard, at: 0)
    return modifiedStack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
    var modifiedStack = stack
    if !modifiedStack.isEmpty { modifiedStack.removeFirst() }
    return modifiedStack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    return stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
    return stack.filter { $0 % 2 == 0 }.count
}
