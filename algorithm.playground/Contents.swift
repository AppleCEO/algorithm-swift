func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0) { (result, number) -> Int in
        result + number
    })/Double(arr.count)
}

solution([1,2,3,4])
solution([5,5])
