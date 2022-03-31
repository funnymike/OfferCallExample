import Foundation

/**
 数组中重复的数字
 
 在一个长度为 n 的数组 nums 里的所有数字都在 0～n-1 的范围内。数组中某些数字是重复的，但不知道有几个数字重复了，也不知道每个数字重复了几次。请找出数组中任意一个重复的数字。

 示例 1：

 输入：
 [2, 3, 1, 0, 2, 5, 3]
 输出：2 或 3
 */

class Solution {
    func findRepeatNumber(_ nums: [Int]) -> Int {
        var nums = nums, i = 0
        
        while i < nums.count {
            if nums[i] == i {
                i += 1
                continue
            }
            if nums[nums[i]] == nums[i] {
                return nums[i]
            }
            // 交换索引为 i 和 nums[i] 的元素值，将此数字交换至对应索引位置
            let temp = nums[i]
            nums[i] = nums[temp]
            nums[temp] = temp
        }
        return -1
    }
}

let nums = [2, 3, 1, 0, 2, 5, 3]
Solution().findRepeatNumber(nums)
