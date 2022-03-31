import UIKit

/**
 二维数组中的查找
 在一个 n * m 的二维数组中，每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。请完成一个高效的函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。
 */

class Solution {
    func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
        guard matrix.count > 0, matrix[0].count > 0 else {
            return false
        }
        var i = matrix.count - 1, j = 0
        while i >= 0 && j < matrix[0].count {
            if matrix[i][j] > target {
                i -= 1
            } else if matrix[i][j] < target {
                j += 1
            } else {
                return true
            }
        }
        return false
    }
}

let matrix = [
    [1,   4,  7, 11, 15],
    [2,   5,  8, 12, 19],
    [3,   6,  9, 16, 22],
    [10, 13, 14, 17, 24],
    [18, 21, 23, 26, 30]
]

Solution().findNumberIn2DArray(matrix, 5)
Solution().findNumberIn2DArray(matrix, 20)
