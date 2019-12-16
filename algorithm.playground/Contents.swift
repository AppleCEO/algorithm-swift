import Foundation

func solution(_ arrangement:String) -> Int {
    var ironRodCount = 0
    var answer = 0
    let array = Array(arrangement)
    
    for (index, character) in arrangement.enumerated() {
        if character == "(" {
            ironRodCount += 1
            continue
        }
        
        if character == ")" {
            ironRodCount -= 1
            if array[index-1] == ")" {
                answer += 1
                continue
            }
            
            answer += ironRodCount
        }
    }
    
    return answer
}

solution("()(((()())(())()))(())")
