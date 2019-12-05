public func solution(_ A : inout [Int]) -> Int {
    var lhs = A.first!
    var rhs = A.reduce(0, { (s1: Int, s2: Int) -> Int in
        return s1 + s2
    }) - lhs
    var minimalDifference = lhs - rhs
    if minimalDifference < 0 {
        minimalDifference *= -1
    }
    
    for index in 1..<A.count-1 {
        lhs += A[index]
        rhs -= A[index]
        
        var difference = lhs - rhs
        if difference < 0 {
            difference *= -1
        }
        
        if difference < minimalDifference {
            minimalDifference = difference
        }
    }
    
    return minimalDifference
}