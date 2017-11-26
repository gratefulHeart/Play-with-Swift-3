//: Playground - noun: a place where people can play

import UIKit

// 使用特殊值作为“无”可能产生歧义
//var errorCode = 404
//errorCode = 0


// 使用可选型
var errorCode:Int? = 404

/* 更新:
 swift2中的代码:
 
 print( errorCode )
 
 errorCode = nil
 print( errorCode )
 
在swift3以上的xcode编译器中，直接print()一个可选型参数是会有Warning的，因为在打印nil的时候nil会隐式转换成一个字符串。如果想解决这个warning, 可以给print()方法设定一个默认值。当参数是一个可选型时，输出默认值
 详情：https://stackoverflow.com/questions/40691184/expression-implicitly-coerced-from-string-to-any
 
 转载波波老师的post: 对于nil聚合运算符，深入进去其实还有很多有意思的东西值得介绍，欢迎大家阅读我在慕课网的手记《聊聊swift中的"??"》。如果对于其中的一些东西不理解，可能看完第四季的运算符重载和协议相关，就能理解啦：） http://t.imooc.com/article/10325
*/

print(errorCode ?? "errorCode value is nil")   //默认值为 "errorCode value is nil"

errorCode = nil
print(errorCode ?? "errorCode value is nil")


var color: UIColor? = nil


// Int? 和 Int 不是一种类型
let imInt = 405
errorCode = imInt
//imInt = errorCode


// 必须显示地声明可选型的类型
//var imOptional = nil
var imOptional: String? = nil
