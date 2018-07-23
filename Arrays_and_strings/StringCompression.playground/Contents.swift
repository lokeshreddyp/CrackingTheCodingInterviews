import UIKit
import Foundation

/*:
 1.6 Implement basic string compression using the counts of repeated characters.
 If the compressed string is not smaller than the original, return the original.
 You can assume the string has only characters a-z \
 `aabcccccaaa -> a2b1c5a3`
 */
func stringCompression(_ original:String) -> String {
    var ch = Array(original)
    var compressed = ""
    // first element in the character array
    var prev = ch[0]
    var count = 0
    
    // Looping through the `ch` array
    for c in ch {
        // check if firs
        if c == prev {
            count += 1
        }
        else {
            compressed += "\(prev)\(count)"
            prev = c
            count = 1
            
        }
    }
    // Since when we reach the end of the array, we don't come to else condition
    // so we write the line which is same in else condition
    // if you don't write this we miss the count of last character that is c in our example
    compressed += "\(prev)\(count)"
    
   return compressed.count > original.count ? original : compressed
}

stringCompression("aabbcccc")

