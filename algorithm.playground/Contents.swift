public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    var answer = [Int](repeating: 0, count: A.count)
    
    for index in 0..<A.count {
        if index + K >= A.count {
            let adjustedIndex =  (index + K) % A.count
            answer[adjustedIndex] = A[index]
            continue
        }
        
        answer[index + K] = A[index]
    }
    
    return answer
}