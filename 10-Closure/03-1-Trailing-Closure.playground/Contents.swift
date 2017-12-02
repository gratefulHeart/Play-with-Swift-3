//: Playground - noun: a place where people can play

import UIKit

var arr:[Int] = []
for _ in 0..<10{
    //arr.append(random()%1000)   //swift 2
    arr.append(Int(arc4random()%1000))   //swift 3
}

/*
 由于以下代码在swift3中的改动都差不多: arr.sort()改成arr.sorted(by: )，在这里我直接将下面的代码替换成正确的代码
 */

arr.sorted(by: { a , b in return a > b})


// Trailing Closure
arr.sort(){ a , b in
    return a > b
}

arr.sort{ a , b in
    return a > b
}


arr.map{ number -> String in
    
    var number = number
    
    var res = ""
    repeat{
        res = String(number%2) + res
        number /= 2
    }while number != 0
    return res
}


