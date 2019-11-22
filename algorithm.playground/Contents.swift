import Foundation

func solution(_ n:Int64) -> Int64 {
    func isSquareRootInt(_ number: Int64) -> Bool {
        let squareRoot = sqrt(Double(n))
        return squareRoot == floor(squareRoot)
    }
    
    if isSquareRootInt(n) {
        return Int64((sqrt(Double(n))+1)*(sqrt(Double(n))+1))
    }
    
    return -1
}

solution(121)
solution(3)
