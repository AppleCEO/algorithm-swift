import Foundation

func solution(_ N:Int, _ M:Int) -> Int {
	var isPrime = true
	var primes = [Int]()
	var sum = 0
	var answer = 0
	
	for i in 2...N {
		isPrime = true
		
		for j in 2...Int((sqrt(Double(N))))+1 {
			if i != j && i % j == 0 {
				isPrime = false
				break
			}
		}
		
		if isPrime {
			primes.append(i)
		}
	}
	
	for i in primes.indices {
		sum = 0
		for j in i..<primes.count {
			sum += primes[j]
			if sum == M {
				answer += 1
				break
			}
			if sum > M {
				break
			}
		}
	}
	
	return answer
}
