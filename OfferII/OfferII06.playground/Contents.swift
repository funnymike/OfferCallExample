import Foundation

// 排序数组中两个数字之和

// 给定一个已按照 升序排列  的整数数组 numbers ，请你从数组中找出两个数满足相加之和等于目标数 target 。
// 函数应该以长度为 2 的整数数组的形式返回这两个数的下标值。numbers 的下标 从 0 开始计数 ，所以答案数组应当满足 0 <= answer[0] < answer[1] < numbers.length 。
// 假设数组中存在且只存在一对符合条件的数字，同时一个数字不能使用两次。

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var i = 0, j = numbers.count - 1
        while i < j {
            if numbers[i] + numbers[j] > target {
                j -= 1
            } else if numbers[i] + numbers[j] < target {
                i += 1
            } else {
                return [i, j]
            }
        }
        return []
    }
}

Solution().twoSum([1, 2, 4, 6, 10], 8)
