git init

touch junk

declare -i x
echo "Enter Beginning date [yyyymmdd]"
read x

declare -i y
echo "Enter End date [yyyymmdd]"
read y

DATE=$x

sudo date +%Y%m%d -s $DATE

while [ $DATE -le $y ]

do
	echo 'a' >> junk

	git add .

	msg='commit'${DATE}

	git commit -m $msg
   	
   	DATE=$(date +%Y%m%d -d "$DATE + 1 day")
   	
   	date +%Y%m%d -s $DATE

done