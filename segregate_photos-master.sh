path="C:\Users\Nishu\Desktop\segregate_photos-master/Answer"
for i in "C:\Users\Nishu\Desktop\segregate_photos-master/segregate_photos-master/"*.jpg
do
	IFS='/'
	read -ra ADDR <<< "$i"
	len=${#ADDR[@]}
	file="${ADDR[$len - 1]}"

	IFS='-'
	read -ra  name <<< $file
	tempPath="$path"
	for (( j = 0 ; j< "${#name[@]}"-1 ; j++ ))
	do
		tempPath="$tempPath/${name[$j]}"
	done
	IFS=" "
	mkdir -p $tempPath 
	mv $i $tempPath
done