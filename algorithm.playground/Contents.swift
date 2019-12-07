public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var dictionary = [Int: Int]()
    var max = 0
    var valueMax = 0
    var answer = [Int]()
    
    for item in A {
        if item == N+1 {
            max = valueMax
            continue
        }
        
        if let value = dictionary[item-1], value < max {
            dictionary[item-1] = max + 1
        } else {
            dictionary[item-1] = (dictionary[item-1] ?? max) + 1
        }
        
        if let value = dictionary[item-1], value > valueMax {
            valueMax = value
        }
    }
    
    for index in 0..<N {
        if let value = dictionary[index] {
            if value < max {
                answer.append(max)
                continue
            }
            answer.append(value)
            continue
        } else {
            answer.append(max)
        }
    }
    
    return answer
}
