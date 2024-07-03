import UIKit
/*
 areAnagrams(string, string) -> boolean
 areAnagrams("thing", "night") -> true
 areAnagrams("listen", "silent") -> true
 areAnagrams("think", "night") -> false
*/
func areAnagrams(left: String, right: String) -> Bool { // Has O(n) time complexity.
    guard left.count == right.count else { return false } // ensure both strings have the same length.
    
    var charCount = [Character: Int]() // Uses a dictionary to count character occurrences.
    
    for char in left {
        charCount[char, default: 0] += 1
    }
    
    for char in right {
        if let count = charCount[char], count > 0 {
            charCount[char] = count - 1
        } else {
            return false
        }
    }
    return true
}

func areAnagramsLean(left: String, right: String) -> Bool { // lean way to check anagrams
    return left.lowercased().sorted() == right.lowercased().sorted()
}

areAnagrams(left: "think", right: "night")
areAnagramsLean(left: "listen", right: "silent")

