KM="$(setxkbmap -query | sed -n -e 's/^.*layout:     //p')"
if [ $KM == "dvorak" ]
then
    setxkbmap us
elif [ $KM == "us" ]
then
    setxkbmap dvorak
fi
