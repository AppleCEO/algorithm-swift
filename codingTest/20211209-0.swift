import Foundation

enum SkyState: Int {
	case sunny =  1, littleCloud, overcast, fog
	
	func getScore() -> Int {
		switch self {
		case .sunny, .littleCloud:
			return 20
		case .overcast:
			return 17
		case .fog:
			return 10
		}
	}
}

enum PrecipitationState: Int {
	case none, rain, snow
	
	func getScore() -> Int {
		switch self {
		case .none:
			return 20
		case .rain:
			return 5
		case .snow:
			return 14
		}
	}
}

func solution(_ data:[[Int]]) -> [Int] {
	// 월 0, 화 1, 수 2, 목 3, 금 4, 토 5, 일 6
	let datePriority = [5, 4, 6, 2, 3, 1, 0]
	let scores = data.map ({ today -> Int in
		guard let skyScore = SkyState(rawValue: today[0])?.getScore() else {
			return 0
		}
		guard let precipitationScore = PrecipitationState(rawValue: today[1])?.getScore() else {
			return 0
		}
		return min(skyScore, precipitationScore) + 20 - abs(22 - today[2])
	})
	
	let bestScore = scores.max()
	var bestDate = -1
	for date in datePriority {
		if scores[date] == bestScore {
			bestDate = date
			break
		}
	}
	
	let worstScore = scores.min()
	var worstDate = -1
	for date in datePriority.reversed() {
		if scores[date] == worstScore {
			let todayData = data[date]
			if todayData[0] == 4 || todayData[1] == 1 || todayData[2] >= 30 || todayData[2] <= 0 {
				worstDate = date
				break
			}
		}
	}
	
	return [bestDate, worstDate]
}

solution([[1,0,11],[3,1,15],[2,0,16],[4,0,17],[2,0,15],[2,1,14],[2,0,12]])
