public func solution(_ A : inout [Int]) -> Int {
    let sortedA = A.sorted()
    
    for (index, item) in sortedA.enumerated() {
        if index + 1 != item {
            return 0
        }
    }
    
    return 1
}