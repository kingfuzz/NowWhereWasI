#!/bin/bash
#
# The amazing shortcut maker
#
tabUrls=$(osascript -e 'tell application "Safari" to get URL of every tab of every window')
tabUrls=$(echo $tabUrls | tr "," " ")

DATE=`date '+%Y-%m-%d_%H-%M'`
filename=~/Desktop/WhereWasI$DATE.command

echo "#!/bin/bash" > $filename
echo "open -a safari $tabUrls" >> $filename
#echo osascript -e 'tell application "Terminal" to quit' >> $filename
chmod +x $filename
