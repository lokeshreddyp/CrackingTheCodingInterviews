import Foundation


// 1.3 Replace all spaces in a string with %20

func urlIfy(_ arr1:String, _ c:Int) -> String {
    var s = ""
    var arr = arr1
    var f = ""
    var count = c // 4
    print("arr1.count \(arr1.count)") // 6
    print(c)
    
    if count < arr.count {
        for c in arr1 {
            
            s += c == " " ? "%20" : String(c)
        }
    }
    // removing the %20 for every space , so multiply it by 3
    var a = s.index(s.endIndex, offsetBy: -((arr.count-count)*3))
    // s.substring(to: a) - deprecated
    f = String(s[..<a]) // swift 4 updated
    return f
}


print(urlIfy("ab d  ",4))


// drop last and drop first implementation
let template = "abcd"
let indexStartOfText = template.index(template.startIndex, offsetBy: 2)
let indexEndOfText = template.index(template.endIndex, offsetBy: -2)

// Swift 4
let dropfirsttwo = template[indexStartOfText...]

let droplasttwo = template[..<indexStartOfText]

