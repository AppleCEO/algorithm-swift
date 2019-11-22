func solution(_ num:Int) -> Int {
    func calculateCount(_ count: Int, _ inputNumber: Int) -> Int {
        if count > 500 {
            return -1
        }
        
        if inputNumber == 1 {
            return count
        }
        
        if inputNumber % 2 == 0 {
            return calculateCount(count+1, inputNumber/2)
        }
        
        return calculateCount(count+1, inputNumber*3+1)
    }
    
    return calculateCount(0, num)
}

solution(6)
solution(16)
solution(626331)
