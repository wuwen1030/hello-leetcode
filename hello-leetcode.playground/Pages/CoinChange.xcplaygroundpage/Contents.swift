//: [Previous](@previous)

import Foundation

class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var dp = [Int](repeating: amount + 1, count: amount + 1)
        dp[0] = 0
        if amount >= 1 {
            for i in 1...amount {
                for coin in coins {
                    if i - coin >= 0 {
                        dp[i] = min(dp[i-coin] + 1, dp[i])
                    }
                }
            }
        }
        return dp[amount] == amount + 1 ? -1 : dp[amount]
    }
}
//: [Next](@next)
