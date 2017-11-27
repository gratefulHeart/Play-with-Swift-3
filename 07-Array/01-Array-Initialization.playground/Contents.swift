//: Playground - noun: a place where people can play

import UIKit

// 数组初始化
var numbers = [0,1,2,3,4,5]
var vowels  = ["A","E","I","O","U"]

// 数组的类型： [Int] 或者 Array<Int>
//var numbers: [Int] = [0,1,2,3,4,5]
//var numbers: Array<Int> = [0,1,2,3,4,5]

// 空数组
var emptyArray1:[Int] = []
var emptyArray2:Array<Int> = []
var emptyArray3 = [Int]()
var emptyArray4 = Array<Int>()

// 创建具有默认值的数组

/*更新:
 swift2:
var allZeros = Array<Int>(count: 5, repeatedValue: 0)
var allZeros2 = [Int](count: 5, repeatedValue: 0)
 swift 3中这块儿的api改了
 */

var allZeros = Array<Int>(repeating: 0, count: 5)    //swift3的解决方案
var allZeros2 = [Int](repeating: 0, count: 5)

// 直接写[]会桥接为NSArray，除非特殊情况，不要这么做

/*更新:
 swift 2:
var emptyArray5 = []
 swift 3 不支持在没有显式地声明数据类型的情况下使用[]。如果想创建一个空的NSArray，则需要声明数据类型
*/

var emptyArray5: NSArray = []
