import Foundation

public func solution(_ A : inout [Int]) -> Int {
    var dictionary = [Int: Bool]()
    
    for item in A {
        dictionary[item] = true
    }
    
    for index in 1...A.count {
        if let check = dictionary[index], check == true {
            continue
        }
        
        return index
    }
    
    return A.count+1
}
