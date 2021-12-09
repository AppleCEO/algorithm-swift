import Foundation

func solution(_ C:Double, _ F:Double, _ X:Double) -> Double {
//	let onlyWorkTime = X / 2
//	let alba1WorkTime = C / 2 + X / 2 + F
//	let alb2WorkTime = C / 2 + C / (2 + F) + X / ( 2 + 2 * F)
//	let alba3WorkTime = C / 2 + C / (2 + F) + C / (2 * 2 + F) + X / ( 2 + 3 * F)
	var answer = X / 2.0
	var albaCount = 1
	while true {
		var time = 0.0
		for index in 0..<albaCount {
			time += C / (2 + F * Double(index))
		}
		time += X / (2 + F * Double(albaCount))
		
		if time < answer {
			answer = time
			albaCount += 1
		} else {
			break
		}
	}
	
	let digit: Double = pow(10, 6)
	answer = round(answer * digit) / digit
	return answer
}

solution(30.5, 3.14159, 1999.1999)
