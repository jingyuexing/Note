查询MYSQL当前用户
```sql
select user();
```

查询当前时间
```sql
select now();
```

查询SQL版本信息
```sql
select version();
```

查看所有的数据库
```sql
show databases;
```

远程链接到其他机器的mysql服务
```bat
mysql -h<host> -u<user> -p<password>
```

使用某个数据库(切换到某个数据库)
```sql
use <databaseName>
```
设置`<databaseName>` 的字符集
```sql
alter database <databaseName> character set <characterset>;
```

```sql
drop database <databaseName> 
```

```sql
drop database if exists <databaseName>
```

查看表结构
```sql
show columns from <tableName>;
-- or
describe <tableName>;

-- or
desc <tableName>

```
向表中新增一个字段之后置于行首；
```sql
alter table <tablename> add <filded> <dataType> frist;
```
修改表中的字段名称
```sql
alter table <tablename> change <oldfield> <newfield> <dataType>
```

更改表名
```sql
alter table <tablename> rename /*![to]*/ <newTableName>
```
删除字段名称
```sql
alter table <tablename> drop <fieldName>;
```

```sql
create table user_infor (
    name char(11) default "张三" -- 使用default设置默认约束,
    age int(10) comment "年纪" default 0,
    address varchar(14) comment "地址",
    phone char(21),
    idcard char(20),
);

```
设置默认约束
```sql
alter table <tablename> modify <column> <type> default <value>;
```

```sql
alter table <tablename> modify <columns> <type>;
```
删除默认约束
```sql
alter table <tablename> alter column <columns> drop default;
```

```sql
select * from <tableName> where {条件};
select <tableName(column)> from <tableName> where {条件};
```

将指定的表中的字段更改为自动增长
```sql
alter table <tablename> modify <column> <type> auto_increment;
```
设置自动增长初始值为6
```sql
alter table <tablename> auto_increment=6;
```

删除指定的列
```sql
alter table <tableName> modify <column> <column_type>;
```

```sql
update <tablename> set column1=value1,column2=value2 ... where {条件表达式}
```

四则运算
| 运算符 |   意义   |
|:---:|:------:|
| `+` |   加    |
| `-` |   减    |
| `*` |   乘    |
| `/` |   除    |
| `%` | 求余(取模) |

比较运算符
| 运算符  |  意义  |
|:----:|:----:|
| `>`  |  大于  |
| `<`  |  小于  |
| `<=` | 大于等于 |
| `>=` | 小于等于 |
| `<>` | 不等于  |
| `!=` | 不等于  |

逻辑运算符
|  运算符  |   意义    | 优先级 |
|:-----:|:-------:|:---:|
| `and` | 与 (并且)  |  2  |
| `or`  | 或 (或者)  |  3  |
| `not` | 非  (否定) |  1  |


```sql
between 100 and 300; -- 200 到 300之间的 包括区间
```

```sql
in("1","2","3"); -- 列举条件
```

```sql
select * from <tableName> where <column> like "_"; -- 下划线,匹配一个字符 等同于.
like "%"; -- 匹配任意多个字符, 等同于 .*
```

```sql
create function <functionName>([...params]) return <returnType>;
begin
    -- sql expression
    return <returnValue>;
end;
```

```sql
ceil(); -- 向上取整
floor(); -- 向下取整
```

```sql
-- 截取子字符串
substring("hello world",5,3) -- > 'o w'
-- 格式化数字 同时进行四舍五入
format(56.789,2) -- > 56.79
-- 字符串替换
replace("Cool World","Cool","hello")
```
```sql
SELECT LOWER(CONCAT("H","E","LLO"));
SELECT CONCAT_WS("/","2020","12","20"); -- 以某个分隔符 进行链接
```

```sql
left() -- 从左边数
right() -- 从右边数
```

```sql
curdate(); -- 可以进行数学运算
current_date();

SELECT DAY(CURDATE());
SELECT CURTIME()+40;
SELECT CURRENT_TIME()+30;
```
```sql
date_format("2020-06-10","%y%m%d");
```
格式化符号
| 格式化符号 | 意义                   |
|:-----:|:---------------------|
| `%a`  | 英文的简写星期              |
| `%b`  | 英文缩写月份               |
| `%H`  | 两位数小时,从00到23         |
| `%f`  | 毫秒数 从000000到999999   |
| `%S`  | 秒数 从00到59            |
| `%i`  | 分钟数,从00到59           |
| `%j`  | 在一年中的第几天, 从001 到 366 |
| `%W`  | 星期的英文全称              |
| `%M`  | 月份英文全称               |
| `%d`  | 两位数日期                |
| `%e`  | 一位数日期                |
| `%m`  | 两位数月份形式              |
| `%c`  | 月份 数字形式              |
| `%Y`  | 四位数年份                |
| `%y`  | 两位数年份                |



查询时候去重
```sql
select distinct <column> from <tableName>;
SELECT * from <tablename> group by <columns>; 
```


多表链接查询常见的语法:
```sql
select * from <tableName> [inner] join <tableName2> on tablename.id = tablename2.id;
SELECT * from <tableName1>,<tablename2> where tableName1.id=tableName2.id;
```

```sql
update borrowInfo set status=1 where cardid="XXXXXXXXXXXXXX";
```

联合更新
```sql
update tableName1 join tablename2 on tablename.id = tablename2.id set column=<value>,column2=<value>,column3=<value> where <expression>;
```
复制一个表的内容(可以用作备份)

```sql
create table <tablename> as select * from <tableName>;
```

约束:
- `not null` 非空约束
- `primary key` 主键约束
- `forigen key` 外键约束
- `default <value>` 默认约束
- `unique key` 唯一约束


```sql
create function if not exists <function_name>([...params]) returns <returnType>
    begin
        -- expression
        return <returnValue>
    end;
```
变量
```sql
declare var_name dataType default value
```

```sql
create function if not exists level(m int) returns varchar(20)
    begin
        declare results varchar(18);
        declare money decimal(7,3);
        select blance into money from reader_infor where card_id=m;
        if money>=500 then
            set results="金牌会员"
        elseif money>=300 then
            set results="高级会员"
        elseif money>=200 then
            set results="普通会员"
        else
            set results="非会员"
        end if;
        return results;
    end;
```
```sql
create function if not exists level(m int) returns varchar(20)
    begin
        declare results varchar(18);
        declare money decimal(7,3);
        select blance into money from reader_infor where card_id=m;
        set num=truncate(money/100,0);
        case num
            when 0 then set level="";
            when 1 then set level="";
            when 2 then set level="";
            when 3 then set level="";
            when 4 then set level="";
        end case;
        return results;
    end;
```

```sql
CREATE FUNCTION `mylevel`(m VARCHAR(30)) RETURNS varchar(20) CHARSET latin1
begin
        declare results varchar(18);
        declare money decimal(7,3);
        select balance into money from reader_infor where card_id=m;
        case 
        when money>=500 then
            set results="金牌会员";
        when money>=300 then
            set results="高级会员";
        when money>=200 then
            set results="普通会员";
        else
            set results="非会员";
        end case;
        return results;
    end
```


```sql
create function sum(n int) returns int
begin
    label:loop
        if(num >= n) then
         leave label;
        end if;
end;
```

删除函数
```sql
drop function [if exists] <function_name>;
```

创建一个存储过程
```sql
create procedure <name>([...params]) 
    select book_id,book_name from bookinfor;
```
创建一个带参数的存储过程
```sql
create procedure <name>([out|inout|in] <value> <valueType>, out <value> <valueType>)
    begin 
    end;
```
```sql
set @name=1 -- 给变量赋值
-- 使用变量则用@variableName
```

删除存储过程
```sql
drop procedure [if exists] <name>;
```
```sql
delimiter 
create procedure my_proc_(in num1 int,in num2 int,out results varchar(20))
    begin
        if num1=num2 then
            set results=""
        elseif num1>num2 then
            set results="num1>num2"
        else
            set results="num1<num2"
        end if;
    end;
delimiter;
call my_proc_(1,3,@results);  -- 调用
select @results;
```

# 事务

## 事务必须满足的四个条件

- 原子性(atomicity)
- 一致性(consistency)
- 隔离性(isolation)
- 持久性(durability)

## 控制事务

- rollback 回滚事务
- commit 提交事务
- savepoint identifier 
- rollback to identifier 



```sql
begin; -- 开始事务
    insert into test value(1,"test01");
    insert into test value(1,"test02");
commit; -- 提交事务

-- -----------------------------
begin; #开始事务
    insert into test value(1,"test01");
    insert into test value(1,"test02");
rollback; #回滚事务

###################################
begin; #开始事务
    insert into test value(1,"test01");
    savepoint tag1;
    insert into test value(2,"test02");
    savepoint tag2;
    insert into test value(3,"test03");
rollback to tag2; #回滚事务 回滚到 savepoint tag2处
```
```sql
set autocommit=0 # 禁止自动提交
set autocommit=1 # 开启自动提交
```

```sql
show engines; # 查看mysql的引擎
```

```sql
alter table <tablename> engine=innodb; # 设置数据表的引擎
set storage_engine=innodb; # 设置存储引擎为innodb 
# 在创表语句后添加 engine=<engineName>
```

# 各数据表功能

## 权限表

- tables_priv 
- columns_priv
- proc_priv 对存储过程和存储函数

创建用户
```sql
create user '<user>'@'<host>' identified by "<password>";
create user '<user>'@'<host>' identified by password("<password>");
```

设置账户权限
```sql
grant select,update,delete,insert on <database>.<tabname>[*] to "<user>"@"<host>"; # 设置增删改查权限给指定的用户
grant all privileges ; # 设置所有权限
```
```sql
flush privileges; # 刷新权限
```

删除用户
```sql
drop user "<user>"@"<host>";
```
使用delete删除用户记录

```sql
delete from mysql.user where user="<username>" and password="<password>";
```

查看对应用户的权限

```sql
show grants for "<user>"@"<host>";
```

撤销用户的权限
```sql
revoke [all privileges|insert|delete|update] on <database>.<tabname> from "<user>"@"<host>";
```

```sql

# example
CREATE USER "rose"@"localhost" IDENTIFIED by "password";
GRANT all PRIVILEGES on test.* to "rose"@"localhost";
REVOKE DELETE on test.*  from  "rose"@"localhost";
FLUSH PRIVILEGES;
show grants for "rose"@"localhost";
```


# 日志

- 错误日志
- 查询日志
- 二进制日志
- 慢查询日志 (超过long_query_time的日志)

通过sql查看错误日志文件
```sql
show variables like "log_error";
```

```bat
: 刷新日志
mysqladmin -uroot -p flush-logs  
```
进入mysql刷新日志
```mysql
flush logs;
```

# 数据的备份与恢复

```bat
mysqldump -uroot -p book <database>  [<tablename>] > /your/path/<specifiedname>.sql
```

备份多个数据库 (添加`--databases`参数)
```bat
mysqldump -uroot -p --databases <database> <database2> > /your/path/<specifiedname>.sql
```

备份所有的数据库(添加`--all-databases`参数)
```cmd
mysqldump -uroot -p --all-databases > /your/path/<specifiedname>.sql
```

使用sql恢复数据库
```cmd
mysql -u user -p <databasename> < /your/path/<specifiedname>.sql
```

使用sql语句进行恢复
```sql
use book;
source /your/path/<specifiedname>.sql
```