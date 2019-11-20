import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    var input = n
    
    while input > 0 {
        answer += input%10
        input /= 10
    }
    
    return answer
}

solution(123)
solution(987)
