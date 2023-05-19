import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var scores = [String: Int]()
    var answer = [Int]()
    for index in 0..<name.count {
        scores[name[index]] = yearning[index]
    }
    for photoes in photo {
        var currentScore = 0
        for photoe in photoes {
            if let score = scores[photoe] {
                currentScore += score
            }
        }
        answer.append(currentScore)
    }
    return answer
}

solution(["may", "kein", "kain", "radi"], [5, 10, 1, 3], [["may"],["kein", "deny", "may"], ["kon", "coni"]])
