//: [Previous](@previous)

import Foundation
/*
 if语句基本使用
 OC:
 int age1 = 10;
 int age2 = 20;
 int max;
 max = age2;
 if (age1 > age2) {
 max = age1;
 }
 NSLog(@"%d", max);
 
 if (age1 > age2) {
 max = age1;
 }else
 {
 max = age2;
 }
 NSLog(@"%d", max);
 
 如果只有一条指令if后面的大括号可以省略
 
 Swift:
 if 条件表达式 {指令}   if 条件表达式 {指令} else{指令}
 0.if后的圆括号可以省略
 1.只能以bool作为条件语句
 2.如果只有条指令if后面的大括号不可以省略
 
 3. 如果只有一条指令if后面的大括号不可以省略
 */

var age1 = 10
var age2 = 20
var max:Int
max = age2
if age1 > age2 {
    max = age1
}
print(max)


var score = 99.9;
if score >= 90 {
    print("优秀")
} else if score >= 60 {
    print("良好")
} else {
    print("不给力")
}


//: [Next](@next)
