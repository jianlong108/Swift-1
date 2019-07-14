//: [Previous](@previous)

import Foundation

/*:
 # 常见数据类型
 + 值类型
   + 枚举
     + Optional
   + 结构体
     + Bool
     + Int
     + Float
     + Dictionary
     + Double
     + Character
     + String
     + Array
     + Set
 + 引用类型
   + 类
 */

//: #Int
//整型 32位系统下，== Int32 占用4个字节 64位系统下== Int64 占用8个字节
var intValue:Int = 10

//如果按照长度划分,Swift中的长短比OC更加精确
var intValue3:Int8 = 6 //占用1个字节 表示：-128 ~ 127
print(Int8.min,Int8.max)

var intValue4:Int16 = 7 //占用两个字节 1个字
var intValue5:Int32 = 8 // 占用4个字节
var intValue6:Int64 = 9 // 占用8个字节

print(intValue3)
//有符号无符号, 默认是有符号的(UInt8/UInt16/UInt32/UInt64)
//表示 0~255
var uintValue7: UInt8 = 10
print(UInt8.min,UInt8.max)


//: #Double Float
//浮点型
var doubleValue1:Double = 10.10 // 表示64位
var floatValue2:Float = 8.9    // 表示32位
var defaultValue = 99.3 //默认是double


/*: #类型转换
> Swift是类型安全的语言, 如果取值错误会直接报错, 而OC不会
 
 取值不对
 OC:unsigned int intValue = -10; 不会报错
 Swift:var intValue:UInt = -10 会报错
 溢出:
 OC:int intValue = INT_MAX + 1; 不会报错
 Swift:var intValue:UInt = UInt.max + 1 会报错
*/

//Negative integer '-1' overflows when stored into unsigned type 'UInt8'
//var uintVal : UInt8 = -1

//Arithmetic operation '255 + 1' (on type 'UInt8') results in an overflow
//var intVal:UInt8 = UInt8.max + 1

/*: ##隐式转换
 数据类型的相互赋值(隐式类型转换)
 OC可以
 int intValue = 10;
 double doubleValue = intValue;
 
 Swift:不可以
 var intValue:Int = 10
 var doubleValue:Double = intValue
 在Swift中“值永远不会被隐式转换为其他类型”(OC中可以隐式类型转换), 以上语句会报错
 
 ## 显示转换
 + OC:
 int intValue = 10;
 double doubleValue = (double)intValue;
 
 +Swift:
 */

//var intValueC:Int = 10
//Cannot convert value of type 'Int' to specified type 'Double'
//var doubleValueC:Double = intValueC


var intValueConvert:Int = 10
var doubleValueConvert:Double
doubleValueConvert = Double(intValueConvert)
// 注意:Double()并不会修改intValue的值, 而是通过intValue的值生成一个临时的值赋值给doubleValue
print(intValueConvert)
print(doubleValueConvert)


/*: #BOOL类型
 C语言和OC并没有真正的Bool类型
 C语言的Bool类型非0即真
 OC语言的Bool类型是typedef signed char BOOL;
 Swift引入了真正的Bool类型
 Bool true false
 */

//true false就是字面量

let isOpen = true
//let isOpen = 1
if isOpen //'Int' is not convertible to 'Bool'
{
    print("打开")
}else
{
    print("关闭")
}

/*:
 # 字符:
 OC: char charValue = 'a';
 
 # Swift和OC字符不一样
 1.Swift是用双引号
 2.Swift中的字符类型和OC也不一样, OC中的字符占一个字节, 因为它自包含ASCII表中的字符, 而Swift中的字符除了可以存储ASCII表中的字符还可以存储unicode字符
 
 */
var charVlaue1: Character = "a"

var charValue2: Character = "韩" //正确

//注意:双引号中只能放一个字符, 如下是错误写法
//var charValue: Character = "abc" //错误

/*:
 字符串:
 字符是单个字符的集合, 字符串十多个字符的集合, 想要存放多个字符需要使用字符串
 
 C:
 char *stringValue = "ab"
 char stringStr = "ab"
 
 OC:
 NSString *stringArr = "ab";
 
 C语言中的字符串是以\0结尾的,例如:
 char *sringValue = "abc\0def"
 printf("%s", stringValue);
 打印结果为: abc
 
 OC语言中的字符串也是以\0结尾的, 例如:
 NSString *StringValue = @"abc\0def";
 printf("%@", stringValue);
 打印结果为: abc
 
 */
var stringValue1 = "ab"

var stringValue2 = "abc\0def"
print(stringValue2)//从此可以看出Swift中的字符串和C语言/OC语言中的字符串是不一样的

/*: ##字符串常用方法：
 ###计算字符串长度:
 C:
 char *stringValue = "abc李";
 printf("%tu", strlen(stringValue));
 打印结果6
 
 OC:
 NSString *stringValue = @"abc李";
 NSLog(@"%tu", stringValue.length);
 打印结果4, 以UTF16计算
 
 
 ### 字符串拼接
 C:
 char str1[] = "abc";
 char *str2 = "bcd";
 char *str = strcat(str1, str2);
 
 OC:
 NSMutableString *str1 = [NSMutableString stringWithString:@"abc"];
 NSString *str2 = @"bcd";
 [str1 appendString:str2];
 NSLog(@"%@", str1);
 
 ### 格式化字符串
 C: 相当麻烦, 指针, 下标等方式
 OC:
 NSInteger index = 1;
 NSString *str1 = [NSMutableString stringWithFormat:@"http://ios.520it.cn/pic/%tu.png", index];
 NSLog(@"%@", str1);
 
 
 ### 字符串比较:
 OC:
 NSString *str1 = @"abc";
 NSString *str2 = @"abc";
 if ([str1 compare:str2] == NSOrderedSame)
 {
 NSLog(@"相等");
 }else
 {
 NSLog(@"不相等");
 }
 
 if ([str1 isEqualToString:str2])
 {
 NSLog(@"相等");
 }else
 {
 NSLog(@"不相等");
 }
 
 Swift:(== / != / >= / <=), 和C语言的strcmp一样是逐个比较
 
 */
var str1 = "abc"
var str2 = "hjq"
var str = str1 + str2
print(str)

var stringVlaue = "abc韩"
print("abc韩","的长度为：", stringVlaue.lengthOfBytes(using: String.Encoding.utf8))
// 打印结果:6, 和C语言一样计算字节数

var index = 1
var str3 = "http://www.blog26.com/pic/\(index).png"
print(str3)

var str4 = "abc"
var str5 = "abc"
if str4 == str5
{
    print("相等")
}else
{
    print("不相等")
}

var str6 = "abd"
var str7 = "abc"
if str6 >= str7
{
    print("大于等于")
}else
{
    print("不大于等于")
}


//判断前后缀
var str8 = "http://www.blog26.com"
if str8.hasPrefix("www")
{
    print("是url")
}
if str8.hasSuffix(".com")
{
    print("是顶级域名")
}

//大小写
var str9 = "abc.txt"
print(str9.uppercased())
print(str9.lowercased())

/*
 转换为基本数据类型
 OC:
 NSString *str = @"250";
 NSInteger number = [str integerValue];
 NSLog(@"%tu", number);
 */
var str10 = "250s"
// 如果str不能转换为整数, 那么可选类型返回nil
// str = "250sd", 不能转换所以可能为nil
var numerber:Int? = Int(str10)
if numerber != nil
{
    print(numerber!) // 2.0可以自动拆包,3.0以后则不会
}



//: [Next](@next)
