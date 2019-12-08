public func solution(_ A : inout [Int]) -> Int {
    var carTravelingEastCount = 0
    var answer = 0
    
    for item in A {
        if item == 0 {
            carTravelingEastCount += 1
            continue
        }
        
        answer += carTravelingEastCount
        
        if answer > 1000000000 {
            return -1
        }
    }
    
    return answer
}
