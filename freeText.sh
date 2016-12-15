#!/bin/bash
clear
echo "Welcome to free texting from Terminal!"
echo ""

echo "Enter full phone number without dashes or space, followed by [Enter]"
read phoneNumber

echo "Now enter the message that you would like to text"
read text

echo "Are you ready to send '$text' + to $phoneNumber"
echo "enter [yes] or [no]"
read confirm
#case $confirm in
#y|Y Curl -X POST http://textbelt.com/text -d number=$phoneNumber -d "message=$text"
#echo "Message sent!"
#exit 0
#n|N echo "Message not sent, try again!"
#esac
YES="yes"
NO="no"
if [ "$confirm" = "$YES" ]; then
#function jsonval {
#temp=echo $json | sed 's/\\\\\//\//g' | sed 's/[{}]//g' | awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed 's/\"\:\"/\|/g' | sed 's/[\,]/ /g' | sed 's/\"//g' | cut -d":" -f2| sed -e 's/^ *//g' -e 's/ *$//g'
#echo ${temp##*|}
#}
json= `Curl -X POST http://textbelt.com/text -d number=$phoneNumber -d "message=$text" | jq -r '.success'`
echo $json
success=$json
echo $success
echo " "
echo "Message sent!"
exit 0
else 
echo "failed to send message, try again"
exit 0
fi

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
