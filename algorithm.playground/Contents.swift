func solution(_ phone_number:String) -> String {
    var index = 0
    
    return String(Array(phone_number).map { (character) -> Character in
        defer {
            index += 1
        }
        if index < phone_number.count-4 {
            return "*"
        }
        
        return character
    })
}

solution("01033334444")
solution("027778888")
