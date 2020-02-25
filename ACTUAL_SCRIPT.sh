#!/bin/bash
for i in `cat file`
do

if [[ "$i" != *"/"* && "$i" != *"."* ]]
then
	APP_NAME=`echo $i`
	 ROOT1=""
	 DIREC=""
	 ROOT2=""
 else
	if [[ "$i" =~ "/" || "$i" =~ "."  ]]
	then
	if [[ "$i" =~ "/" ]]; then
		ROOT1=`echo $i | cut -d"/" -f1 | sed '/$/s/,//'`
		DIREC=`echo $i | cut -d"/" -f2- | sed '/$/s/,//'`
	echo " $APP_NAME $ROOT1 $DIREC "
	else
		ROOT2=`echo $i | sed '/$/s/,//'`
		DIREC=""
	echo " $APP_NAME $ROOT2"
	fi
fi
fi
done
