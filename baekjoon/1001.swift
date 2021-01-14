let input = readLine()
let splited = input!.split(separator: " ")
let numbers = splited.map({ (string) -> Int in
    return (Int(string) ?? 0)
})
let result = numbers[0] - numbers[1]
print(result)
