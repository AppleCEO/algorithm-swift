public func solution(_ A : inout [Int]) -> Int {
    var pairedNumbersCounts = [Int: Int]()

    for item in A {
        pairedNumbersCounts[item] = (pairedNumbersCounts[item] ?? 0) + 1
    }    
    
    return pairedNumbersCounts.filter { $0.value % 2 == 1 }.first!.key
}