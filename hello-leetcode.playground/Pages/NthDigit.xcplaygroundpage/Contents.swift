//: [Previous](@previous)

import Foundation

class Solution {
    func findNthDigit(_ n: Int) -> Int {
        var num = n
        var k = 1
        while num > (pow(10, k-1) as NSDecimalNumber).intValue * 9 * k  {
            num = num - (pow(10, k-1) as NSDecimalNumber).intValue * 9 * k
            k = k + 1
        }
        let intValue = (pow(10, k-1) as NSDecimalNumber).intValue + Int(ceil(Float(num) / Float(k))) - 1
        let reminder = (num - 1) % k
        let m = (pow(10, k-1-reminder) as NSDecimalNumber).intValue
        return (intValue / m) % 10
    }
}

let solution = Solution()
solution.findNthDigit(1000)

//: [Next](@next)
