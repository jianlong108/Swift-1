//: [Previous](@previous)

import Foundation


//: 数组
//有值数组
var arr0 = [1,2,3]
var arr1: Array = [1,2,3]
var arr2: Array<Int> = [1,2,3]
var arr3: [Int] = [1,2,3]
//var arr4: Int[] = [1,2,3] // 早期写法 已废弃

//空数组
//var arr5 = [] // 已废弃
var arr6 = [Int]()
var arr7 = Array<Int>()
print("=======================数组begin=========================")
print("arr7是个空数组 \(arr7)")

//不可变数组
let arr8 : [Int] = []
//可变数组
var arr9 : [String] = [String]()

//:如果想明确表示数组中存放的是不同类型的数据, 可以使用Any关键字, 表示数组中可以存放不同类型的数据

var arr10 = [1,"hjq",1.65] as [Any]
var arr11:Array<Any> = [1,"hjq",1.75]

print("arr10: \(arr10)")
print("arr10[2]: \(arr10[2])")

print(arr11)
print(arr11[2])

/*:数组常见操作
 # 数组操作
 1. 获取长度
 */
print(arr0.count)

/*:
 2. 判断是否为空
 */
print(arr0.isEmpty)

/*:
 3.检索
 */
print(arr0[1])

/*:
 4.追加
 */
var arr15 = [1,2]
arr15.append(4) //addObject:
print("arr15:",arr15)

//追加
var arr16 = [1,2,3]
arr16 += [4]
print("arr16:",arr16)
arr16 += arr16[0...1] // 也可以借助自己数组元素追加
print("arr16:",arr16)

/*:
 5.插入
 */
arr16.insert(8, at: 0)
print("arr16:",arr16)


/*:
 6.更新
 */
arr16[0] = 7
print(arr16)

/*:
 7.删除
*/
arr16.remove(at: 0)
print("arr16:",arr16)

arr16.removeLast()
print("arr16:",arr16)

arr16.removeFirst()
print("arr16:",arr16)

arr16.removeAll(keepingCapacity: true) // 是否保持容量, 如果为true, 即使删除了容量依然存在, 容量是2的倍数
print("arr16:",arr16)
print("arr16 的容积:",arr16.capacity)


//移除某区间位置的数组元素
var arr17 = [1,2,3]
//arr22.removeRange(Range(start: 0, end: 1)) 2.0写法 已废弃
arr17.removeSubrange(0...1)
print("arr17:",arr17)


arr17 = [1,2,3]
arr17.replaceSubrange(0..<1, with: [8])
print("arr17:",arr17)

// 其实Range就是半闭区间
var range = 0...5
//range = 99 // 通过报错可以推断出类型
print(range) // 通过答应也可以推断出类型

arr17 = [1,2,3]
//arr[0...1] = [99,98]
//arr[0...1] = [99,88,77]
//等价于上一行代码
arr17.replaceSubrange(0...1, with: [99,88,77])
print("arr17:",arr17)

for i in 0..<arr17.count
{
    print(arr17[i])
}
for number in arr17
{
    print(number)
}

//取出数组中某个区间范围的值
arr17 = [1,2,3]
for number in arr17[0..<3]
{
    print(number)
}

print("=======================数组end=========================")
//: 字典

/*:
 字典定义: 键值对
 > key一定要是可以hash的(String, Int, Double, Bool), value没有要求
 */

var dict = ["name":"hjq","age":25.5] as Any
print("dict :",dict)

//var dict1:Dictionary = ["name":"hjq","age":25.5] 废弃

var dict2:Dictionary<String,AnyObject> = ["name":"jq" as AnyObject,"age":25.5 as AnyObject]
print(dict2)

//var dict3:Dictionary<String:AnyObject> = ["name":"jq","age":34]  废弃

var dict4:[String:AnyObject] = ["name":"hjq" as AnyObject ,"age":30 as AnyObject ]
print(dict4)

//var dict5:[String:AnyObject] = Dictionary(dictionaryLiteral: ("name","hjq"),("age",28))
//print(dict5)  废弃

//3.0
//1.字典的定义使用[key:value,key:value]快速定义
let dict6:[String:Any] = ["name":"zhang","age":12]
print(dict6)

//数组字典
let arrDic:[[String:Any]] = [
    ["name":"hello","age":22],
    ["name":"hi","age":23]
]
print("arrDic: \(arrDic)")

//2.可变字典的增删改查
var dictM:[String:Any] = ["name":"hjq","age":23]
print(dictM)
/** key存在则为修改, key不存在则为添加 **/
//增加键值对
dictM["score"] = 98
print(dictM)

//修改键值对
dictM["age"] = 80
print(dictM)

//删除键值对
dictM.removeValue(forKey: "name")
print(dictM)

//删除键值对
// ps: 字典是通过key来定位的, 所有的key必须是可以 hash/哈希 的 (MD5是一种哈希, 哈希就是将字符串变成唯一的整数, 便于查找, 能提高字典遍历的速度)
//dictionary.removeValue(forKey: <#T##String#>)

//字典遍历
//写法一
for e in dictM
{
    print("key = \(e.key) value = \(e.value)")
}

//写法二
for (key,value) in dictM
{
    print("key = \(key) value = \(value)")
}

//字典合并
var dic6 = ["name":"hihello","age":23] as [String : Any]
let dic7 = ["teacher":"wang"]

for (key,value) in dic7
{
    dic6[key] = value
}
print(dic6)


//---------集合-字典---------

//1.字典的定义和创建
var airPorts:Dictionary<String,String> = ["TYO":"Tokyo","DUB":"Dublin"]
//2.字典的增加与替换
var set_dict = ["name":"刘德华","age":18,"height":180] as [String : Any]
print("set_dict：\(set_dict)")
//针对name的键修改
set_dict["name"] = "CoderSun"
print("修改name之后的dict：\(set_dict)")
//dict没有属性的直接加入
set_dict["gender"] = "男"
print("加入gender之后的dict：\(set_dict)")
//3.字典的合并
var dict_combine = ["title":"老大"];

for (k,v) in dict_combine {
    set_dict[k] = v;
}

print(set_dict)

//获取key对应的值
print("获取key对应的值：\(set_dict["gender"] ?? "nan")")
//移除一个key和其对应的值
set_dict.removeValue(forKey:"title")
print("移除一个元素之后的dict：\(set_dict)")

//的获取所有key和获取所有value //
print("未强转之前的所有key:\(set_dict.keys)")    // 打印出来还是字典，所以这里需要强制转换下
print("强转之后的所有key:\(Array(set_dict.keys))")
print(Array(set_dict.values))

//4.编程题
//4.1创建一个数组，增加10个元素，然后遍历将每个元素输出

var array6 = [String]()
array6.append("1")
array6.append("2")
array6.append("3")
array6.append("4")
array6.append("5")
array6.append("6")
array6.append("7")
array6.append("8")
array6.append("9")
array6.append("10")
print("array6：\(array6)")


for i in array6 {
    print(i)
}

print("--------------")

//: set
var set1 = Set<String>()
set1.insert("1")
set1.insert("2")
set1.insert("3")
set1.insert("4")
set1.insert("5")
set1.insert("6")
set1.insert("7")
set1.insert("8")
set1.insert("9")
set1.insert("10")

for i in set1.sorted() {
    print(i)
}

print("--------------")

//4.3 创建一个字典，往里面添加5个学员的学好和姓名，然后按键值打印出来


var studentDic = Dictionary <String,String>()

studentDic["1"] = "Lucy"
studentDic["2"] = "John"
studentDic["3"] = "Smith"
studentDic["4"] = "Aimee"
studentDic["5"] = "Amanda"

for (id,name) in studentDic {
    print(id,name)
}

//: [Next](@next)
