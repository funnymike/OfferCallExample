import UIKit

/// ### 面试题1：整数除法
/// 给定两个整数 `a` 和 `b` ，求它们的除法的商 `a/b` ，要求不得使用乘号 `'*'`、除号 `'/'` 以及求余符号 `'%'` 。

class Solution {
    func divide(_ a: Int, _ b: Int) -> Int {
        let isPositive: Bool = (a < 0) == (b < 0)
        var a = abs(a), b = abs(b)
        var count = 0
        
        while a >= b {
            var shift = 0
            while a >= (b << shift) {
                shift += 1
            }
            a -= (b << (shift - 1))
            count += (1 << (shift - 1))
        }
        return refactorCount(count, isPositive)
    }
    
    /// 符号处理
    private func refactorCount(_ count: Int, _ isPositive: Bool) -> Int {
        let MAXINT: Int = Int(Int32.max)
        var count = count
        
        if isPositive {
            if count > MAXINT  {
                return MAXINT
            }
        } else {
            count *= -1
        }
        return count
    }
}

/// 示例 1：
Solution().divide(15, 2)

/// 示例 2：
Solution().divide(15, 2)
