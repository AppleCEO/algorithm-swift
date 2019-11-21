import Foundation

func solution(_ n:Int64) -> [Int]
{
    var answer:[Int] = []
    
    for number in String(n)
    {
        answer.insert(Int(String(number)) ?? 0, at: 0)
    }
    
    return answer
}

solution(123)
solution(987)
