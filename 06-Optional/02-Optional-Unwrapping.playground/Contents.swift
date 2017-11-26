//: Playground - noun: a place where people can play

import UIKit

var errorCode:String? = "404"
print( errorCode )   //这里有warning

// 可选型不可以直接使用
//"The errorCode is" + errorCode


// 强制解包
"The errorCode is " + errorCode!

// 强制解包是危险的
errorCode = nil
//"The errorCode is" + errorCode!

// 判断不是nil
if errorCode != nil{
    "The errorCode is " + errorCode!
}
else{
    "No error"
}

//在swift3以及以上版本中，也可以这样用。当然，使用if判断也没有问题
print("The errorCode is \(errorCode ?? "no error")")

// if let 解包
if let unwrappedErrorCode = errorCode{
    "The errorCode is " + unwrappedErrorCode
}
else{
    "No error"
}

//// 可以使用相同的变量名
if let errorCode = errorCode{
    "The errorCode is " + errorCode
}
else{
    "No error"
}


// 使用if-let同时解包多个变量
var errorMessage:String? = "Not found"

if let errorCode = errorCode{
    if let errorMessage = errorMessage{
        "The errorCode is " + errorCode + "\nThe errorMessage is " + errorMessage
    }
}

/*更新:
 swift2:
if let errorCode = errorCode , errorMessage = errorMessage{
    "The errorCode is " + errorCode + "\nThe errorMessage is " + errorMessage
}
在swift3中，if后面每个变量都需要加一个let修饰
 详情: https://stackoverflow.com/questions/24592004/using-multiple-let-as-within-a-if-statement-in-swift
*/
if let errorCode = errorCode , let errorMessage = errorMessage{
    "The errorCode is " + errorCode + "\nThe errorMessage is " + errorMessage
}

/*更新:
 swift2:
if let errorCode = errorCode , errorMessage = errorMessage where errorCode == "404"{
    print("Page not found")
}
swift3中，where可以被逗号代替
 */

if let errorCode = errorCode , let errorMessage = errorMessage, errorCode == "404"{
    print("Page not found")
}



