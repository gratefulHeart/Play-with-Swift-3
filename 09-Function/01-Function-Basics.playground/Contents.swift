//: Playground - noun: a place where people can play

import UIKit

// 函数的基本构建
func sayHelloTo( name: String ) -> String{
    return "Hello " + name
}

/*更新：
 swift2:
sayHelloTo("bobo")
 在swift3中，当调用函数时，如果在函数定义时参数前面没有加 "_", 则需要显式地声明参数的名称。以后相同的地方只会进行改变的声明，而不会进行解释
 */

sayHelloTo(name: "bobo")    //swift 3


// 函数参数中包含可选型
func sayHelloTo( name: String? ) -> String{
    return "Hello " + (name ?? "Guest")
}

var nickname: String?
//sayHelloTo(nickname)    //swift 2
sayHelloTo(name: nickname)

// 没有参数与没有返回值的函数
func printHello(){
    print("Hello")
}

// func printHello() -> ()
// func printHello() -> Void


// 函数命名

// 语意明确很简单
var arr = [1,2,3]
arr.append(4)
arr.contains(2)

// 蕴含是否有参数

//arr.indexOf(3)    //swift 2, index的改动前面有讲过
arr.index(of: 3)    //swift 3

// 甚至蕴含参数的类型
//arr.removeAtIndex(0)     //swift 2, 'removeAtIndex' has been renamed to 'remove(at:)'
arr.remove(at: 0)          //swift 3
//arr.removeRange(0..<2)   //swift 2, 'removeRange' has been renamed to 'removeSubrange'
arr.removeSubrange(0..<2)  //swift 3

// 甚至蕴含返回值
var str: NSString = "    Hello   !"

//str.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString: " !"))   //swift 2
str.trimmingCharacters(in: CharacterSet(charactersIn: "!"))     //swift 3
