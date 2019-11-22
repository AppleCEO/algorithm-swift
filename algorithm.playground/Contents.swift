func solution(_ arr:[Int]) -> [Int] {
    var array = arr
    
    array.remove(at: array.firstIndex(of: array.min() ?? array[0])!)
    
    return array
}

solution([4,3,2,1])
