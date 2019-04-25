# @Author: Jingyuexing
# @Date:   2019-04-23 22:55:54
# @Last Modified by:   Jingyuexing
# @Last Modified time: 2019-04-25 17:43:16

arry=(
	"你好"
	"这是"
	"一个"
	"脚本"
)

len=${#arry[@]}
for (( i = 0; i < len; i++ )); do
	#statements
	echo ${arry[${i}]}
done

a=40
b=50
if [[ a<b ]]; then
    #statements
    echo "a<b"
else
    echo "a>b"
fi

function usage(){
	echo "this is my frist shell function"
	echo "this file name ${0}"
}
usage

a=20
b=10
if [[ $a -eq $b ]]; then
    #statements
    echo "a is b"
else
    echo "a not is b"
fi
if [[ $a -ne $b ]]; then
    echo "a not is b-----"
else
    echo "a is b-------" 
fi