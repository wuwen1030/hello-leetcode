//: [Previous](@previous)

import Foundation

/*:
 n = [0|1]*2^0 + [0|1]*2^1 + ... + [0|1]*2^k
 
 x^n = (x^(2^0))^[0|1] * (x^(2^1))^[0|1] * ... * (x^(2^1))^[0|1]
 */
class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var base = x
        var exp = abs(n)
        var ans = 1.0
        while exp > 0 {
            if exp % 2 == 1 {
                ans = ans * base
            }
            base = base * base
            exp = exp >> 1
        }
        return n > 0 ? ans : 1 / ans;
    }
}

let solution = Solution()

solution.myPow(2.0, 10)

//: [Next](@next)
