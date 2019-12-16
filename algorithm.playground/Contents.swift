import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var terms = [Int].init(repeating: 0, count: progresses.count)
    var answer = [Int]()
    
    for (index, progress) in progresses.enumerated() {
        let remainingWork = 100 - progress
        let speed = speeds[index]
        
        terms[index] = remainingWork % speed == 0 ? remainingWork / speed : remainingWork / speed + 1
    }
    
    var index = 1
    var term = terms.first!
    var sameTermsCount = 1
    
    while index < terms.count {
        if terms[index] <= term {
            sameTermsCount += 1
        } else {
            answer.append(sameTermsCount)
            sameTermsCount = 1
            term = terms[index]
        }
        index += 1
    }
    
    answer.append(sameTermsCount)
    
    return answer
}

solution([93,30,55,95,99], [1,30,5,4,1])
