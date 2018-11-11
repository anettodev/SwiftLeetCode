import UIKit
/*
 336. Palindrome Pairs
 ---------------------------------------------------------------------------------------------
 Given a list of unique words, find all pairs of distinct indices (i, j) in the given list,so
 that the concatenation of the two words, i.e. words[i] + words[j] is a palindrome.
 
 Example 1:
 
 Input: ["abcd","dcba","lls","s","sssll"]
 Output: [[0,1],[1,0],[3,2],[2,4]]
 Explanation: The palindromes are ["dcbaabcd","abcddcba","slls","llssssll"]
 
 Example 2:
 
 Input: ["bat","tab","cat"]
 Output: [[0,1],[1,0]]
 Explanation: The palindromes are ["battab","tabbat"]
 ---------------------------------------------------------------------------------------------
 source: https://leetcode.com/problems/palindrome-pairs/description/
*/

// Extension to check if a string is palindrome
extension String {
    public func isPalindrome() -> Bool {
        let original = self.lowercased().replacingOccurrences(of: " ", with: "")
        let reversed = String(original.reversed())
        return original == reversed
    }
}
// get palindrome pairs
func palindromePairs(arr: [String]) -> [[Int]]{
    var result: [[Int]] = Array()
    for (i,word1) in arr.enumerated(){
        for (j,word2) in arr.enumerated() {
            if i != j {
                let strSum = word1 + word2
                if strSum.isPalindrome() {
                    result.append([i,j])
                }
            }
        }
    }
    return result
}

let wordList = ["abcd","dcba","lls","s","sssll"] // example of word list
let pPairs = palindromePairs(arr: wordList)
if pPairs.count > 0 {
    print(String(format:"result: %@", pPairs.description))
} else {
    print("Result: The word list does not have palindrome pairs")
}
