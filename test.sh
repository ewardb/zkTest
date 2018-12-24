#! /bin/bash
#cd ..
#echo $(pwd)
#fileList=$(ls)
#echo $fileList
#pw=$(pwd)
#for filetemp in $fileList
#do
#	if [ -d $filetemp ];
#	then
#		echo 
#	else
#		echo $filetemp':'
#		name=${filetemp%.*}
#		curl -s -F "file=@"$filetemp "http://gw.b2b-v2gray.jcloudec.com/oss/uploadImageTest?platformId=20&fileName="$name
#		echo 
#	fi
#done










string="1811190001,1808280001,1808280002,1808290001,1808290002,1806190002,1808290003,30,1806080001,1808140001,40,201812066666,1805310001,50,1807120004,51,1807120005,1806010001,52,1807120002,53,1807120003,54,1807120001,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,1806140001,70,71,72,73,201812058888,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,1806040004,97,98,99,1806040001,100,1807170002,1808020001,1806040003,1807170001,1806040002,201812057777,1809140001,9999999999,1806130001,1806050001"  
array=(${string//,/ })  
for var in ${array[@]}
do
   echo $var
   curl -X GET --header 'Accept: */*' 'http://127.0.0.1:8001/get?key=2&platformId='$var
done 








