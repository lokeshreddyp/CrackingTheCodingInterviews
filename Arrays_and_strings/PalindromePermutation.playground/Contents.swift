//: Playground - noun: a place where people can play

import UIKit

//: 1.4 Check if a string is a permutation of a palindrome
extension String {
    
    func isPalindromeString(of : String) -> Bool {
        var counts1 = charactersCount()
        let counter = counts1.filter { v in
            v.value%2 != 0
        }
        var count2 = of.charactersCount()
        return counts1 == count2 && counter.count<=1
    }
    
    func charactersCount() -> [Character : Int] {
        var charactercount = [Character : Int]()
        characters.forEach { c in
            charactercount[c] =  charactercount[c] ?? 0 + 1
        }
        return charactercount
    }
}

var s1 = "abab"
var s2 = "aabb"

print(s2.isPalindromeString(of: s1))

