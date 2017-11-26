//: Playground - noun: a place where people can play

import UIKit


// Optional chaining

/*更新：
 swift 2:
var errorMessage: String? = "Not Found"
if let errorMessage = errorMessage{
    errorMessage.uppercaseString
}
 */

var errorMessage: String? = "Not Found"
if let errorMessage = errorMessage{
    errorMessage.uppercased()      //swift3使用uppercased()
}

//errorMessage?.uppercaseString    //swift2
errorMessage?.uppercased()    //swift3

//var uppercaseErrorMessage = errorMessage?.uppercaseString    //swift2
var uppercaseErrorMessage = errorMessage?.uppercased()    //swift 3

/*  swift 2:
if let errorMessage = errorMessage?.uppercaseString{
    errorMessage
}
 */
if let errorMessage = errorMessage?.uppercased(){     //swift3
    errorMessage
}

// Optional chaining 也可以使用!

//let uppercaseErrorMessage2 = errorMessage!.uppercaseString  //swift 2
let uppercaseErrorMessage2 = errorMessage!.uppercased()     //swift3
