//: [Previous](@previous)

/*:
 # 1. Boil Down To O(N)

 Given two arrays, create a function that let's a user know whether these two arrays contain any common items.

//                        //   Time            Space
//Brute Force -  //   O(N ^ 2)        O(1)

 func commonItemsBruteForce(_ A: [Int], _ B: [Int]) -> Bool {
    for i in 0..<A.count {
        for j in 0..<B.count {
            if A[i] == B[j] {
                return true
        }
     }
   }
  return false
 }

 commonItemsBruteForce([1, 2, 3], [4, 5, 6])
 commonItemsBruteForce([1, 2, 3], [3, 5, 6])
*/

//                //   Time                         Space
//Hash Map -     // O(N) + O(N) = O(2N) -> O(N)     O(N)

func commonItemsHashMap(_ A: [Int], _ B: [Int]) -> Bool {

    //Still looping...but not nested - O(2n) vs O(n^2)
    var hashA = [Int: Bool]()
    for a in A {   // -> O(N)
        hashA[a] = true
    }

    //Now lookup in the hash to see if elements of B exist.
    for b in B { // -> O(N)
        if hashA[b] == true {
            return true
        }
    }
    return false
}

commonItemsHashMap([1, 2, 3], [3, 5, 6])

//: [Next](@next)
