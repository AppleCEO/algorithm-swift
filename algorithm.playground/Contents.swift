import Foundation

func solution(_ heights:[Int]) -> [Int] {
    var answer = [Int].init(repeating: 0, count: heights.count)
    
    for (index, height) in heights.enumerated() {
        for innerIndex in 0...index {
            let topIndex = index-innerIndex
            if heights[topIndex] > height {
                answer[index] = topIndex+1
                break
            }
        }
    }
    
    return answer
}

solution([6,9,5,7,4])
