func getConcatenation(_ nums: inout [Int]) -> [Int] {
    nums + nums
}
var nums = [2,3]
print(getConcatenation(&nums))