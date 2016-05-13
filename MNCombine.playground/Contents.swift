//: Playground - noun: a place where people can play

import UIKit

//Iterative Algorithms
func combineMN(m:Int, n:Int, inout b:Array<Int>, inout x:Array<Int>, N:Int, inout result:Array<String>) -> Array<String> {
    
    for i in n...m {
        b[n-1] = i-1
        if n > 1 {
            
            combineMN(i-1, n: n-1, b: &b, x: &x, N: N, result: &result)
        }else {
            var tmp = [Int]()
            var line = String()
            for j in 0..<N {
                tmp.append(x[b[j]])
                line = String(x[b[j]]) + "," + line
            }
            result.append(line)
        }
    }
    return result
}

var b = Array<Int>(count: 20, repeatedValue: 0)
var x = [1,2,3,4,5,6,7,8]
var result = [String]()
let m = 8
let n=5
let combinResult = combineMN(m, n: n, b: &b, x: &x, N: n, result: &result)
print(combinResult)

