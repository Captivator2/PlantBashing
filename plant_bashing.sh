#!/bin/bash
default_names=("Morpheus" "Analiea" "Izzy")
name_index=0
weather_types=("Rainy" "Sunny" "Cloudy" "Overcast" "Windstorm" "Rainy" "Foggy")
get_weather() {
	local count=${#weather_types[@]}
	local index=$((RANDOM % count))
	echo "${weather_types[$index]}"
}
# If we should keep looping the game
play_again=true
#Used to decide if its the user first time of playing
first_time=true
while $playing; do
	if $first_time; then
read -p "Whats your name,gardener?" username
fi
echo "Nice to meet you, $username! Let's get planting!"
sleep 1
echo "Goodbye for now, $Vincent!"

echo ""
read -p "Do you want to plant a new seed? (yes/no):" plant_choice

if [[ "$plant_choice" == "yes" ]]; then
	echo "You dig a small hole and genlty plant a seed the size of a raindrop."
	sleep 1

	read -p "Do you want to wait for your seed to grow? (yes/no): " grow_choice

	if [["$grow_choice" == "yes" ]]; then
		echo "Day 1 - Planted the seed."
		sleep 1
		echo" Day 2 - Nothing happened..."
		sleep 1
		echo "Day 3 - The seed germinated overnight!"
		sleep 1

		read -p "Would you like to wait 1 more day or leave now? (wait/leave):"

		if [[ "$next_choice" == "wait" ]]; then
			echo " Day 4 - Nothing happened..."
			sleep 1
			echo " Day 5 - Still nothing..."
			sleep 1
			echo "Day 6 -  The seed grew into a small sapling overnight!"
			sleep 1

			#Ask if they want to name their plant
			if [[ "$first_time" == true ]]; then
				read -p "What would you like to name your plant? " plant_name
            else
                    plant_name="Morpheus"
                fi
                first_time=false
			else
				# Ask if they want to change the plant name when playing again
				read -p "Do you want to change your plant's name? (yes/no): " name_choice
                if [[ "$name_choice" == "yes" ]]; then
                    read -p "What would you like to name your plant? " plant_name
                else
                	plant_name=${default_names[$name_index]}
                	((name_index++))
                	if [[ "$name_index" -ge ${#default_name[@]} ]]; then
                		name_index=0
                fi
                echo "Your plant has been named: $plant_name"
            fi


	# Now we begin daily sapling growth
	age=6
	height=0
	leaves=0

	while true; do
		read -p "Would you like to keep watching your sapling grow? (stay/leave): " watch_choice

		if [[ "$watch_choice" == "stay" ]]; then
			((age++))
			((height+=2))
			((leaves+=2))

			weather=$(get_weather)

			echo ""
			echo "Day $age"
			echo "Weather today: $weather"
			echo "$plant_name grew 2cm and 2 new leaves!"
			echo "Height: ${plant_height}cm"
			echo "Leaves: ${plant_leaves}"
			sleep 1

			if [[ "$age" -eq 21 ]]; then
				echo""
				echo "$plant_name has completed its full life cycle!"
				echo "Total age: $age days"
				echo "Final Height: ${height}cm"
				echo "Final leaf Count: $leaves"
				sleep 2
				echo "Thank you for nurturing $plant_name, $username. See you again in the garden!"
			fi

		elif [[ "$watch_choice" == "leave" ]]; then
			echo "Your sapling is now lost to time... but it was beautiful while it lasted."
			echo "Thank you for taking care of it, $username!"
		else
			echo "Please enter 'stay' or 'leave'."
		fi
	done

else
	echo "Goodbye, $username! Your germinated seed will rest in the soil until next time."
fi

	else
		echo "Goodbye, caretaker. Maybe next time your seed will grow!"
	fi

elif [[ "$plant_choice" == "no" ]]; then
	echo "In this digital world, time moves much faster than your reality."
	sleep 2
	echo "Seconds here are like days in your world."
	sleep 1
	read -p "Do you want to wait and see if a seed might still grow? (yes/no) "

	if [[ "$late_chocie" == "yes" ]]; then
		echo "Witing one day... nothing hapeened."
		sleep 1
		echo "Still, nothing. Goodbye for now!"
	else
		echo "Goodbye, $username. See you next time."
	fi
else
	echo "Invalid input. Please restart the game."
fi
	# Play again logic
read -p "Would you like to play again? (yes/no): " play_again
if [[ "$play_again" == "yes" ]]; then
    play_again=true
    first_time=false
else
    play_again=false
    echo "Thanks for playing, $username! See you next time!"
fi
done

