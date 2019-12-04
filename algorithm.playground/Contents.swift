public func solution(_ N : Int) -> Int {
    let binary = String(N, radix: 2)
    var longestBinaryGap = 0
    var currentBinaryGap = 0
    
    for character in binary {
        if character == "1" {
            if currentBinaryGap > longestBinaryGap {
                longestBinaryGap = currentBinaryGap
            }
            
            currentBinaryGap = 0
            continue
        }
        
        currentBinaryGap += 1
        
        
    }
    
    return longestBinaryGap
}