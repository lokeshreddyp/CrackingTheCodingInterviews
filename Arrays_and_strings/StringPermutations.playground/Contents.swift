
/*
 
 1.2 Determine if a string is a permutation of another
 
 Approach :
 
 Use a [Character : Int] type dict, to keep track of the characters,
 and return that dict
 
 In anaother function we verify both dicts are equal or not
 
 */



extension String {
    func charactersCount() -> [Character : Int] {
        var charactersCount = [Character : Int]()
        
        characters.forEach { c in
            // intial value for keys in dictioniries is nil, so handle it with nil coa-lasing operator
            // for every Key (character) in the string give the value
            charactersCount[c] = (charactersCount[c] ?? 0) + 1
        }
        return charactersCount
    }
    
    func isPermutation(of: String) -> Bool {
        return charactersCount() == of.charactersCount()
    }
}

let s1 = "abcd"
let s2 = "dabc"

s2.isPermutation(of: s1)


