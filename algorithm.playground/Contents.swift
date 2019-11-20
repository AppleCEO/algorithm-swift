func solution(_ s:String) -> Int {
    if s[s.startIndex] == "-" {
        return -1*(Int(String(s[s.index(after: s.startIndex)..<s.endIndex])) ?? 0)
    }
    
    return Int(String(s[s.startIndex..<s.endIndex])) ?? 0
}

solution("+1")
solution("-1")
solution("1")
