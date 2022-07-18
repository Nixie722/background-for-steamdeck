#!/bin/bash
FILE=lock
if [ -f "$FILE" ]; then
    base64 -w 0 < $FILE > lckbase.txt
    echo 'background-image: url("data:image/jpeg;base64,' | cat - lckbase.txt > temp && mv temp lckbase.txt
    echo '");'  >> lckbase.txt 
    tr -d "\n" < lckbase.txt > lck.txt

else 
    echo "Can't find $FILE."
    exit 0
fi

FILE=home
if [ -f "$FILE" ]; then
        base64 -w 0 < $FILE > homebase.txt
    echo 'background-image: url("data:image/jpeg;base64,' | cat - homebase.txt > temp && mv temp homebase.txt
    echo '");'  >> homebase.txt 
    tr -d "\n" < homebase.txt > hmb.txt
else 
    echo "Can't find $FILE."
    exit 0
fi

read -p "Name your theme: " themename
cp -R ./slhbg/ ../themes/$themename
sed -i '2s|.*|    "name": "'$themename'",|' ../themes/$themename/theme.json

sed -i -e '/HOMEBASE/r hmb.txt' -e '/HOMEBASE/d' ../themes/$themename/shared.css
sed -i -e '/LCKBASE/r lck.txt' -e '/LCKBASE/d' ../themes/$themename/shared.css

rm -r lckbase.txt
rm -r lck.txt
rm -r homebase.txt
rm -r hmb.txt