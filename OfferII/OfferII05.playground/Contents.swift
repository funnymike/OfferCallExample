import UIKit

//单词长度的最大乘积
//给定一个字符串数组 words，请计算当两个字符串 words[i] 和 words[j] 不包含相同字符时，它们长度的乘积的最大值。假设字符串中只包含英语的小写字母。如果没有不包含相同字符的一对字符串，返回 0。

class Solution {
    func maxProduct(_ words: [String]) -> Int {
        var flags = Array.init(repeating: 0, count: words.count)
        
        for i in 0..<words.count {
            for char in Array(words[i]) {
                flags[i] |= 1 << (char.asciiValue! - Character("a").asciiValue!)
            }
        }
        var res = 0
        for i in 0..<words.count {
            for j in i+1..<words.count {
                if flags[i] & flags[j] == 0 {
                    let product = words[i].count * words[j].count
                    res = max(product, res)
                }
            }
        }
        return res
    }
}

let words = ["abcw","baz","foo","bar","fxyz","abcdef"]
Solution().maxProduct(words)
