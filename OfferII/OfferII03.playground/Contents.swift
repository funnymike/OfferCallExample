import Foundation

// 前 n 个数字二进制中 1 的个数
// 给定一个非负整数 n ，请计算 0 到 n 之间的每个数字的二进制表示中 1 的个数，并输出一个数组。

class Solution {
    func countBits(_ n: Int) -> [Int] {
        guard n > 0 else {
            return [0]
        }
        
        var res = Array.init(repeating: 0, count: n + 1)
        
        for i in 1..<n {
            res[i] = res[i >> 1] + (i & 1)
        }
        return res
    }
}

Solution().countBits(2)
Solution().countBits(5)
