public func solution(_ A : inout [Int]) -> Int {
    let totalSum = A.reduce(0, { (s1: Int, s2: Int) -> Int in
        return s1 + s2
    })
    
    return (A.count+2)*(A.count+1)/2 - totalSum
}