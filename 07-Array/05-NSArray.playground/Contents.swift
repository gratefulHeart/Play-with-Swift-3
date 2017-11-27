//: Playground - noun: a place where people can play

import UIKit


//在前面介绍过了。swift3如果不显式声明NSArray的话，编译器是不会进行自动推断的
//var array1 = []    //swift 2

var array1: NSArray = []



var array2 = [1,2,3,4,5] as NSArray

var array3: NSArray = [1,"hello"]

/*更新:
 swift 2:
var array4: [NSObject] = [1,"hello"]
 swift3: 由于编译器会自动将"hello"和1推断成Int和String，所以在[NSObject]放入元素时，这些被隐式转换（成String和Int）的元素会导致bug
 */

var array4: Array<NSObject> = [1 as NSNumber,"hello" as NSString]    //swift3解决方案
// NextStep - NS
// UserInterface - UI

