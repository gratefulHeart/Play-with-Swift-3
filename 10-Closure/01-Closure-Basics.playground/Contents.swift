//: Playground - noun: a place where people can play

import UIKit

var arr:[Int] = []
for _ in 0..<100{
    //arr.append(random()%1000)   //swift 2
    arr.append(Int(arc4random()%1000))   //swift 3
}


// 定义比较函数完成自定义排序
func biggerNumberFirst(a:Int , _ b:Int) -> Bool{
    return a > b
}

//arr.sort(biggerNumberFirst)       //swift 2
arr.sorted(by: biggerNumberFirst)   //swift 3


// 使用闭包
//arr.sort({ (a: Int , b: Int) -> Bool in   //swift 2
arr.sorted(by: {(a: Int, b: Int) -> Bool in
    return a > b
})
