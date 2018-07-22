import UIKit
import Foundation


/*:
 1.5 There are three types of characeter edits on strings: insert, replace, or delete.
 Write a function to return if one string is 0 or 1 edit away from the other
 */

func oneAway(_ str1:String, _ str2:String) -> Bool {
    
    var i = 0
    var j = 0
    var count = 0
    let str1characters = Array(str1) // this will convert the string into character arrays, so we can access the characters by index
    let str2characters = Array(str2)
    let str1count = str1characters.count
    let str2count = str2characters.count
    
    // if diffrenece b/w two counts is greater than 1 , then return false
    if str1count - str2count > 1 {
        return false
    }
    
    //
    while (i < str1count && j < str2count) {
        // If current characters don't match
        if (str1characters[i] != str2characters[j]) {
            str2characters[j]
            if (count > 1) {
                return false
            }
            // If length of one string is
            // more, then only possible edit
            // is to remove a character
            if (str1count > str2count) {
                i += 1
            }
            else if (str1count < str2count) {
                j += 1
            }
            //Iflengths of both strings is same
            else {
                i += 1
                j += 1
            }
            // Increment count of edits
            count += 1
        }
        // If current characters match
        else {
            i += 1
            j += 1
        }
    }
    // If last character is extra in any string
    if (i < str1count || j < str2count) {
        i
        j
        str1count
        str2count
        count += 1
    }
    return count == 1
}


var s1 = "pale"
var s2 = "ple"

oneAway(s1, s2)

s1 = "pale"
s2 = "pale"

oneAway(s1, s2)

s1 = "pale"
s2 = "pales"

oneAway(s1, s2)

s1 = "pale"
s2 = "bake"

oneAway(s1, s2)
