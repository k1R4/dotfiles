mute_spotify() {

	# extract sink input value
	SINK_INPUT_ID=$(pactl list sink-inputs | grep -B 17 "Spotify" | grep "Sink Input" | cut -c13-)
	
	MUTE_VAL=$1

	# set mute state
	pactl set-sink-input-mute $SINK_INPUT_ID $MUTE_VAL
}

check_ads_mute() {
	
	TRACK_TITLE=$(playerctl metadata xesam:title)

	if [[ $TRACK_TITLE == "Advertisement" ]]; then
		echo "$(date) Stupid Ad, going to mute"
		mute_spotify 1
        	sleep 10
	else
		mute_spotify 0
	fi
}

while true; do
	sleep 1
	check_ads_mute
done
