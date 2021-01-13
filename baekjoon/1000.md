let input = readLine()
let splited = input!.split(separator: " ")
let numbers = splited.map({ (string) -> Int in
    return (Int(string) ?? 0)
})
let result = numbers.reduce(0, { (first:Int, second: Int) -> Int in
    return first + second
})
print(result)
