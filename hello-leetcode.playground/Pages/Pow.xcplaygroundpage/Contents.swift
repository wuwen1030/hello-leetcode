//: [Previous](@previous)

import Foundation

/*:
 Assume that the binary representation of n is ak,ak-1,...,a0, ai = 0 or 1
 
 then:
 
 n = a0*2^0 + a1*2^1 + ... + ak*2^k-1
 
 x^n = (x^(2^0))^a0 * (x^(2^1))^a1 * ... * (x^(2^k-1))^ak
 
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

//: [Next](@next)
