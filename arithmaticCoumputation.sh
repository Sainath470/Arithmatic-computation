echo "Enter the three inputs: "
read a b c

result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))

declare -A ar

ar[comp1]=$result1
ar[comp2]=$result2
ar[comp3]=$result3
ar[comp4]=$result4

echo ${ar[@]}
