//: Playground - noun: a place where people can play

import UIKit

var arr:[Int] = []
for _ in 0..<100{
    //arr.append(random()%1000)  //swift 2
    arr.append(Int(arc4random()%1000))  //swift 3
}

/*
 由于以下代码在swift3中的改动都差不多: arr.sort()改成arr.sorted(by: )，在这里我直接将下面的代码替换成正确的代码
 */


// 使用闭包排序
arr.sorted(by: { (a:Int , b:Int) -> Bool in
    return a > b
})


// 闭包内如果只有一行代码，可以放在同一行
arr.sorted(by: { (a:Int , b:Int) -> Bool in return a > b})


// 自动获得参数和返回值类型
arr.sorted(by: { a , b in return a > b})


// 可以省略return关键字
arr.sorted(by: { a , b in a > b})


// 简化参数名
arr.sorted(by: { $0 > $1})


// 符号作为函数
arr.sorted(by: >)
