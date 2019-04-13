git init

touch junk

declare -i x
echo "Enter Beginning date [yyyymmdd]"
read x

declare -i y
echo "Enter End date [yyyymmdd]"
read y

DATE=$x

while [ $DATE -le $y ]

do
	echo 'a' >> junk

	git add .

	msg='commit'${DATE}

	git commit -m $msg --date="$(date -R -d ${DATE})"
   	
   	DATE=$(date +%Y%m%d -d "$DATE + 1 day")

done
