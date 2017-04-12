echo " enter basic salary "
read bs
hra=`expr $bs \* 10 / 100`
da=`expr $bs \* 50 / 100`
gross=`expr $bs + $da + $hra + 250`
echo "Gross salary is $gross"


