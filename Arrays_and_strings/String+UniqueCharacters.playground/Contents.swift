import UIKit
import Foundation

/*:
 1.1 Determine if a string has all unique characters.
 */

/// 1) First implementation
func uniqueCharactersString(_ arr1: String) -> Bool {
    let lateststr = arr1.sorted()
    
    for i in stride(from: 0, to: arr1.count-1, by: 1) {
        if(lateststr[i] == lateststr[i+1]) {
            return false
        }
    }
    return true
}

/// 2) Second implementation

func uniqueCharactersUsingSet(_ arr1: String) -> Bool {
    var set = Set<Character>()
    for x in arr1 {
        if set.contains(x) {
            return false
        }
        set.insert(x)
    }
    return true
}

assert(uniqueCharactersUsingSet("abd12"))

assert(uniqueCharactersString("acd21"))
