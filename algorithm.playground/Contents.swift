func solution(_ x:Int) -> Bool {
    let sum = String(x).reduce(0) { (result, character) -> Int in
        result + (Int(String(character)) ?? 0)
    }
    
    return x % sum == 0
}

solution(10)
solution(11)
solution(12)
solution(13)
solution(18)
