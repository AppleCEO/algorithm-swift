import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var total = 0
    var count = 0
    
    for department in d.sorted() {
        if department + total <= budget {
            count += 1
            total += department
        } else {
            break
        }
    }
    
    return count
}

solution([1,3,2,5,4], 9)
solution([2,2,3,3], 10)
