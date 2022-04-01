import Foundation

/// 剑指 Offer II 002. 二进制加法
/// 给定两个 01 字符串 a 和 b ，请计算它们的和，并以二进制字符串的形式输出。
/// 输入为 非空 字符串且只包含数字 1 和 0。

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let aChars = Array(a), bChars = Array(b)
        var res = "", carry = 0, i = aChars.count - 1, j = bChars.count - 1
        
        while i >= 0 || j >= 0 || carry > 0 {
            var sum = carry
            
            if i >= 0 {
                sum += Int(String(aChars[i]))!
                i -= 1
            }
            
            if j >= 0 {
                sum += Int(String(bChars[j]))!
                j -= 1
            }
            
            res = "\(sum % 2)" + res
            carry = sum / 2
        }
        return res
    }
}

Solution().addBinary("11", "10")

Solution().addBinary("1010", "1011")
