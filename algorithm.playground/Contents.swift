import Foundation

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
        
        if let value = dictionary[item] {
            if value < max {
                dictionary[item] = max + 1
            } else {
                dictionary[item] = (dictionary[item] ?? max) + 1
            }
        } else {
            dictionary[item] = (dictionary[item] ?? max) + 1
        }
        
        if valueMax < dictionary[item] ?? valueMax {
            valueMax = dictionary[item]!
        }
    }
    
    for index in 1...N {
        if let value = dictionary[index] {
            if value < max {
                answer.append(max)
                continue
            }
        }
        
        answer.append(dictionary[index] ?? max)
    }
    
    return answer
}

var array = [6, 6, 6, 6, 6, 6]
solution(5, &array)
