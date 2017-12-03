//: Playground - noun: a place where people can play

import UIKit

var age: Int? = 17
print(age)      //这里会有警告。因为可选型变量在打印的时候，如果该变量是nil，则会有一个String(nil)的过程。如果想取消掉这个警告可以使用 ?? 或者强制解包

age = nil
print(age)


// Optional实际是一个enum

/*更新:
 swift 2:
var website: Optional<String> = Optional.Some("imooc.com")
 swift 3中，Option类下的大部分成员都改名成: 首字母小写+后面单词首字母大写 的形式
 Optional.Some被改名成Optional.some
 Optional.None被改名成Optional.none
 */

var website: Optional<String> = Optional.some("imooc.com")    //swift 3

print(website)

//website = Optional.None   //swift 2
website = Optional.none     //swift 3
print(website)


//website = .Some("imooc.com")  //swift 2
website = .some("imooc.com")    //swift 3
//website = .None               //swift 2
website = .none                 //swift 3

website = "imooc.com"
website = nil


// 从enum的角度看Optional的解包
switch website{
//case .None:    //swift 2
case .none:      //swift 3
    print("No website")
//case let .Some(website):  //swift 2
case let .some(website):    //swift 3
    print("The website is \(website)")
}


// Swift为Optional的解包设置的语法
if let website = website{
    print("The website is \(website)")
}
else{
    print("No website")
}

