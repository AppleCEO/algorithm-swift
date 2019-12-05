public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    var condition = [Int: Int]()
        
    for (index, item) in A.enumerated() {
        if item <= X {
            condition[item] = (condition[item] ?? 0) + 1    
        }
        
        if condition.count == X {
            return index
        }
    }    
    
    
    return -1
}