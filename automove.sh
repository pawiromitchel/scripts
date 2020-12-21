# infinite loop, press Ctrl + C to stop
while :
do
    # get a random number between -200 and 200 for X and Y
    x=$((-200 + RANDOM % 200))
    y=$((-200 + RANDOM % 200))

    
    sleep=$((1 + RANDOM % 1500))
    echo "sleep for" $sleep "seconds"
    sleep $sleep
    echo "x" $x "y" $y
    
    # move the mouse randomly
    xdotool mousemove_relative --sync -- $x $y
done
