import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ phone_numbers : [String], _ phone_owners : [String], _ number : String) -> String {
	if let index = phone_numbers.firstIndex(of: number) {
		return phone_owners[index]
	}
	return number
}

solution(["123-123-123"], ["Walter"], "111-111-111")
