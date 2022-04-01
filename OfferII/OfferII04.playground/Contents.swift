import Foundation

//只出现一次的数字
//给你一个整数数组 nums ，除某个元素仅出现 一次 外，其余每个元素都恰出现 三次 。请你找出并返回那个只出现了一次的元素。

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var ans = 0, sum = 0
        
        for i in 0..<64 {
            sum = 0
            let temp = (1 << i)
            for j in 0..<nums.count {
                if temp & nums[j] != 0 {
                    sum += 1
                }
            }
            if sum % 3 == 1 {
                ans ^= temp
            }
        }
        return ans
    }
}

Solution().singleNumber([2, 2, 3, 2])
Solution().singleNumber([0, 1, 0, 1, 0, 1, 100])
