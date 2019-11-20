func solution(_ s:String) -> String {
    var uppercaseToggle = true
    
    return String(s.map { (character) -> Character in
        if uppercaseToggle && character != " " {
            uppercaseToggle = false
            return Character(character.uppercased())
        }
        
        uppercaseToggle = true
        return Character(character.lowercased())
    })
}

solution("try hello world")
solution("try hi world")
solution("TRY HELLO WORLD")
