import Foundation
/**
 替换空格
 请实现一个函数，把字符串 s 中的每个空格替换成"%20"。
 
 示例 1：
 输入：s = "We are happy."
 输出："We%20are%20happy."
 */
class Solution {
    func replaceSpace(_ s: String) -> String {
        let sChars = Array(s)
        var spaceCount = 0
        
        for char in sChars {
            if char == Character.init(" ") {
                spaceCount += 1
            }
        }
        
        var rChars: [Character] = Array.init(repeating: Character(" "), count: sChars.count + 2 * spaceCount)
        var i = 0
        for sChar in sChars {
            if sChar == Character(" ") {
                rChars[i] = Character("%")
                rChars[i + 1] = Character("2")
                rChars[i + 2] = Character("0")
                i += 3
            } else {
                rChars[i] = sChar
                i += 1
            }
        }
        return String(rChars)
    }
}

let s = "We are happy."
Solution().replaceSpace(s)

