func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = Array<String>.init(repeating: "", count: arr1.count)
    
    func pad(string : String, toSize: Int) -> String {
      var padded = string
      for _ in 0..<(toSize - string.count) {
        padded = "0" + padded
      }
        return padded
    }
    
    for stringIndex in 0..<arr1.count {
        let binary1 = Array(pad(string: String(arr1[stringIndex], radix: 2), toSize: arr1.count))
        let binary2 = Array(pad(string: String(arr2[stringIndex], radix: 2), toSize: arr1.count))
        
        
        
        for (charIndex, character) in binary1.enumerated() {
            if character == "0" && binary2[charIndex] == "0" {
                answer[stringIndex] += " "
            } else {
                answer[stringIndex] += "#"
            }
        }
    }
    
    return answer
}

solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28])
solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10])
