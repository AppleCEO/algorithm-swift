//let N = Int(readLine() ?? "0")

func solution(_ N: Int) {
    if N % 5 == 0 {
        print(N/5)
        return
    }
    
    if N>4 {
        for number in 0...N/5 {
            let share = N/5 - number
            if (N - share*5) % 3 == 0 {
                print(share + (N - share*5)/3)
                return
            }
        }
    }

    if N % 3 == 0 {
        print(N/3)
        return
    }
    
    print(-1)
}

solution(18)
solution(4)
solution(6)
solution(9)
solution(11)
solution(3)
solution(5)
solution(7)
