func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var k = 0
    for index in 0..<nums.count {
        if nums[index] != val {
            nums[k] = nums[index]
            k+=1
        }
    }
    return k
}

var nums1 = [0, 1, 2, 2, 3, 0, 4, 2]
print(removeElement(&nums1, 2)) // Output: 5
print(nums1) // Output: [0, 1, 4, 0, 3, 2, 2, 2]

var nums2 = [3, 2, 2, 3]
print(removeElement(&nums2, 3)) // Output: 2
print(nums2) // Output: [2, 2, 3, 3]