public func solution(_ A : inout [Int]) -> Int {
    var dictionary = [Int: Int]()
    
    for item in A {
        if item <= A.count && item > 0 {
            dictionary[item] = (dictionary[item] ?? 0) + 1
        }
    }
    
    if dictionary.count == 0 {
        return 1
    }
    
    for index in 1...dictionary.count {
        if dictionary[index] == nil {
            return index
        }
    }
    
    return dictionary.count+1
}
