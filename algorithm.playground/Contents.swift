func solution(_ n:Int) -> Int {
    var sum = 0
    
    if n == 1 || n == 0 {
        return n
    }
    
    for quotient in 1...n/2 {
        if n%quotient == 0 {
            sum += quotient
        }
    }
    
    return sum + n
}

solution(0)
solution(1)
solution(5)
solution(12)
