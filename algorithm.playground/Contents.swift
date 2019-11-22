func solution(_ n:Int, _ m:Int) -> [Int] {
    let gcd: Int
    let lcm: Int

    func calculateGCD(_ n: Int, _ m: Int) -> Int {
        if m == 0 {
            return n
        }
            
        return calculateGCD(m, n%m)
    }
    
    gcd = calculateGCD(n, m)
    lcm = n * m / gcd
    
    return [gcd, lcm]
}

solution(3, 12)
solution(2, 5)
solution(11, 144)
