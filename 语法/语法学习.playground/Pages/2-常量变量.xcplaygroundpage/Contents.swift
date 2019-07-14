//: [Previous](@previous)

import Foundation

/*:
 # 变量:
 ## OC:
 
 + 先定义再初始化
 int num;
 num = 10;
 
 + 定义的同时初始化
 int num2 = 20;
 
 ## Swift:
 + 先定义再初始化
 报错: 没有指定数据类型(type annotation missing in pattern),
 > 在Swift中如果想要先定义一个变量, 以后使用时再初始化必须在定义时告诉编译器变量的类型(类型标注)
 
 + 定义的同时初始化
 在Swift中如果定义的同时初始化一个变量,可以不用写数据类型, 编译期会根据初始化的值自动推断出变量的类型(其它语言是没有类型推断的)
 以后在开发中如果在定义的同时初始化就没有必要指定数据类型, 除非需要明确数据类型的长度或者定义时不初始化才需要指定数据类型
 
 ## 命名
 “你可以用任何你喜欢的字符作为常量和变量名，包括 Unicode 字符：”
 “常量与变量名不能包含数学符号，箭头，保留的（或者非法的）Unicode 码位，连线与制表符。也不能以数字开头，但是可以在常量与变量名的其他地方包含数字。”
 错误:
 var 3x = 10
 var x+-3 = 10
 
 ## 常量
 
 + OC: const int num = 10;
 + Swift: let num = 10
 
 + **只能赋值一次**
 + **它的值不要求在编译时期确定，但使用之前必须赋值1次**
 
 */

//var numError
//numError = 10

var num: Int
num = 10;

var num2:Int = 20
var num3 = 20

var 🐂🍺 = "牛啤"
print(🐂🍺)

var 嘿嘿 = "嘿嘿"
print(嘿嘿)

/*先声明，后初始化时，必须声明的同时指定类型
let constNum //Type annotation missing in pattern
constNum = 10 //Found an unexpected second identifier in constant declaration; is there an accidental break?
*/
 
let constNumber : Int
constNumber = 10

// 常量只能修改一次
//constNumber = 20

// 以下方式获取age的值，证明了一点：常量的值不要求在编译时期确定，但使用之前必须赋值1次
func getAge() -> Int {
    return 20
}

let age : Int
age = getAge()

//: [Next](@next)
