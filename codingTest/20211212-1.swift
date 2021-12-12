import Foundation

public func solution(_ message : String, _ K : Int) -> String {
	if message.count <= K {
		return message
	}
	var answer = ""
	for word in message.split(separator: " ") {
		if answer.count + word.count > K {
			answer.removeLast()
			break
		} else {
			answer += word
			answer += " "
		}
	}
	return answer
}
