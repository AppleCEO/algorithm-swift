import Foundation

func solution(_ n:Int64) -> Int
{
    var array:[Int] = []
    var result = ""
    
    for number in String(n)
    {
        array.insert(Int(String(number)) ?? 0, at: 0)
    }
    
    array.sort { (left, right) -> Bool in
        return left > right
    }
    
    array.forEach { (number) in
        result += String(number)
    }
    
    return Int(result) ?? 0
}

solution(118372)

