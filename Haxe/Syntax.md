## Syntax(语法)


### 变量

认识一个编程语言开始，先要了解如何创建一个变量

```haxe
var a:String = "Hello";
var b:Float = 12.89;
var c:Int = 10;
var ary:Array<String> = ["a","b","c","d","e","f"];
```

在上面的代码当中，我创建了三个变量，使用了关键字`var`来创建变量,创建变量还需要给变相显性地给出类型；比如变量`a`是(`String`)字符串类型。    
这样的给定类型地方式像是typescript,又或者As

或者你可以使用关键字`typedef`自己定义一个类型
```haxe
typedef User{
  var age:Int;
  var name:String;
}
```
以上定义了一个`User`类型，他有两个属性,分别为年龄(`age`)和姓名(`name`)

又或者你使用`enum`关键字定义一个枚举类型,如下：
```haxe
enum HttpMethod{
  "GET";
  "POST";
  "DELETE";
}
```


除了上面介绍的类型，以下的类型是一些基础类型

|     类型     |            含义        |
|:-----------:|:------------------------|
|`Int`        |整型,如  `10`,`15`       |
|`Float`|浮点型|
|`Bool`|布尔类型,值仅有`true`或`false`|
|`Void`|空类型|
|`Array`|数组类型，像,`[12,33,55,6,8]`,或是`["a","b"]`|
|`String`|字符串类型|
|`Dynamic`|动态类型，由编译器自动推断变量的类型|


---
### 控制语句
---

讲完了变量，我们来讲控制语句,比如选择判断语句，循环语句之类的。


#### if

```haxe
if(/*布尔表达式*/){
  //当布尔表达式值为true时,执行这里面的代码
}
```


#### if-else

#### if-else-if

#### for

在haxe语言当中，for循环和其他编程语言相比，有些另类
```haxe
var min =0;
var max = 100;
for(i in min...max){
  trace(i);
}
```
在上面的代码中，循环了100次，从min开始，直至循环累计到max为止

#### while


### 类和方法

```haxe

```
