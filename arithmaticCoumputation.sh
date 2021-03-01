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

a=(${ar[comp1]} ${ar[comp2]} ${ar[comp3]} ${ar[comp4]})
n=4
echo  ${a[@]}

#sorting loop
for((i=0;i<4;i++))
do
	for((j=i+1;j<4;j++))
	do
		if [ ${a[i]} -lt ${a[j]} ]
		then
			temp=${a[i]}
			a[$i]=${a[j]}
			a[j]=$temp
		fi
	done
done

echo "After sorting in descending order"

for((i=0;i<4;i++))
do
	echo ${a[$i]}
done
