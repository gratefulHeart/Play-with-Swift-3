//: Playground - noun: a place where people can play

import UIKit


// Int()
var ageInput: String = "16"

let age = Int(ageInput)

/*更新:
 swift 2:
if let age = Int(ageInput) where age < 20{
        
    print("You're a teenager!")
}
 @慕课网用户"慕大神仙": 在swift3中 if语句里面不能用where关键字，取而代之的是直接用 , 逗号进行条件的分割，多个条件之间是 & 逻辑与 的关系
 */

if let age = Int(ageInput), age < 20{    //swift 3
    
    print("You're a teenager!")
}


// Optional in String method
var greetings = "Hello"

/*更新:
 swift 2:
greetings.rangeOfString("ll")
greetings.rangeOfString("mm")
 swift3中，String类型的API改动很大。这里可以使用使用.range(of: )方法。不过，这个方法的返回值是一个Range<String.Index>?。
 如果想获得range的upperbound和lowerbound的话，需要进行解包
 */

greetings.range(of: "ll")   //swift 3
greetings.range(of: "mm")

//这里提供一种解包的思路，供大家参考
let rangeOfGreetings = greetings.range(of: "ll")

print(rangeOfGreetings ?? "invalid range")

let range = (upperBound: rangeOfGreetings?.upperBound, lowerBound: rangeOfGreetings?.lowerBound)


