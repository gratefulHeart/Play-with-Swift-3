//: Playground - noun: a place where people can play

import UIKit


var user = ["name":"bobobo", "password":"liuyubo", "occupation":"programmer"]

// let的字典是不可修改的

// 修改值
user["occupation"] = "freelancer"
user.updateValue("imooc", forKey: "password")


/*更新:
 swift 2:
let oldPassword = user.updateValue("imooc", forKey: "password")
if let oldPassword = oldPassword, newPassword = user["password"] where oldPassword == newPassword{
    print("注意：修改后的密码和之前一样，可能导致安全问题！")
}
 1) 在swift3中，if后面的where被逗号替代
 2) swift3中，if后面如果要对多个参数进行赋值，let不能省略
 */

let oldPassword = user.updateValue("imooc", forKey: "password")
if let oldPassword = oldPassword, let newPassword = user["password"], oldPassword == newPassword{   //swift 3
    print("注意：修改后的密码和之前一样，可能导致安全问题！")
}


// 添加 键-值 数据对
user["email"] = "liuyubobobo@gmail.com"
user

user.updateValue("http://liuyubobobo.com", forKey: "website")   //这里的返回值是nil
user


// 删除 键-值 数据对
user["website"] = nil

/*更新:
 swift2:
if let email = user.removeValueForKey("email"){
    print("电子邮箱 \(email) 删除成功")
}
 swift3中删除字典中的数据对的API发生了改变。新版的API看上去和前面添加以及修改(.updateValue(forKey: ))的API差不多
 */

if let email = user.removeValue(forKey: "email"){      //swift 3
    print("电子邮箱 \(email) 删除成功")
}

user.removeAll()

