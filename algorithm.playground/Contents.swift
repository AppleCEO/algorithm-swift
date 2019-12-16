import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var index = 0
    var array = priorities.map { (number) -> (Int, Int) in
        index += 1
        return (index, number)
    }
    
    var count = priorities.count
    var order = [Int]()
    index = 0

    while order.count < priorities.count {
        defer {
            if index >= array.count {
                index = 0
            }
        }
        let max = array.max(by: { (left, right) -> Bool in
            left.1 < right.1
        })!
        if array[index].1 == max.1 {
            order.append(array[index].0)
            array.remove(at: index)
            continue
        }

        index += 1
        
    }

    for index in 0..<order.count {
        if order[index] == location+1 {
            return index+1
        }
    }
    
    return 0
}

solution([1, 1, 9, 1, 1, 1], 0)
