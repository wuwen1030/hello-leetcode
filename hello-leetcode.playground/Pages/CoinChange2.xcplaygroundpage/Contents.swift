//: [Previous](@previous)

import Foundation

class Solution {
    func change(_ amount: Int, _ coins: [Int]) -> Int {
        var dp = [Int](repeating: 0, count: amount + 1)
        dp[0] = 1
        for coin in coins {
            if amount < coin {
                continue
            }
            for i in coin...amount {
                dp[i] = dp[i] + dp[i - coin]
            }
        }
        return dp[amount]
    }
}

//: [Next](@next)
