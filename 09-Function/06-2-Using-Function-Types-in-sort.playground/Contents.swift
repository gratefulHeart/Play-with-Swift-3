//: Playground - noun: a place where people can play

import UIKit


// 生成随机数组
var arr:[Int] = []
for _ in 0..<100{
    //arr.append(random()%1000) swift2: swift3中使用arc4random()方法
    arr.append(Int(arc4random()%1000))   //swift 3
}

arr


// 默认排序

arr.sort()
arr

//arr.sortInPlace()
//arr


// 在排序中使用函数参数

func biggerNumberFirst( a: Int , _ b: Int) -> Bool{
//    if a > b{
//        return true
//    }
//    return false
    
    return a > b
}

/*更新:
 swift2:
arr.sort(biggerNumberFirst)
 swift 3中sort()的API改成了sorted(by: )  这点和python比较像
 
 在这里引用一下慕课网用户"慕大神仙"的解释:
 如果大家使用的是swift3.0版本，那么需要注意：
 2.0版本中的方式是  sort() 和  sortInPlace()
 而在3.0版本中以上方法被修改为 sorted()  sort()
 新版中 sorted()是不会改变原数组的值，而sort()是会改变原数组的值，这点与2.0是不一样的
 */
arr.sorted(by: biggerNumberFirst)    //swift 3


func cmpByNumberString( a: Int , _ b: Int ) -> Bool{
    
    return String(a) < String(b)
}

//arr.sort( cmpByNumberString )     //swift 2
arr.sorted(by: cmpByNumberString)   //swift 3


func near500(a:Int , _ b:Int)->Bool{
    
    return abs(a-500) < abs(b-500) ? true : false
}

//arr.sort( near500 )     //swift 2
arr.sorted(by: near500)   //swift 3
