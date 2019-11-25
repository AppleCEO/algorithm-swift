func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var i = 0, j = 0
    
    return arr1.map { (numbers) -> [Int] in
        defer {
            i += 1
            j = 0
        }
        return numbers.map { (number) -> Int in
            defer {
                j += 1
            }
            return number + arr2[i][j]
        }
    }
}

solution([[1,2],[2,3]], [[3,4],[5,6]])
solution([[1],[2]], [[3],[4]])
