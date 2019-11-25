func solution(_ x:Int, _ n:Int) -> [Int64] {
    let result = Array<Int>.init(repeating: 0, count: n)
    var index = 0
    
    return result.map { (_) -> Int64 in
        index += 1
        return Int64(index*x)
    }
}

solution(2, 5)
solution(4, 3)
solution(-4, 2)
