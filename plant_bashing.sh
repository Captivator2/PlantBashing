echo "Welcome to PlantBashing! Lets grow something great!"
echo
read -p "Whats your name,gardener?" Vincent

echo
echo "Nice to meet you, $Vincent. Let's get planting!"
sleep 3
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
	# Now we begin daily sapling growth
	age=6
	height=0
	leaves=0

	while true; do
		read -p "Would you like to keep watching your sapling grow? (stay/leave): " watch_chocie

		if [[ "$watch_choice" == "stay" ]]; then
			((age++))
			((height+=2))
			((leaves+=2))

			echo ""
			echo "Day $age"
			echo "Height: ${height}cm"
			echo "Leaves: $leaves"
			sleep 1

			if [[ "$age" -eq 21 ]]; then
				echo""
				echo "Your plant has completed its full life cycle!"
				echo "Total age: $age days"
				echo "Final Height: ${height}cm"
				echo "Final leaf Count: $leaves"
				sleep 2
				echo "Thank you for nurturing your plant, $username. See you again in the garden!"
				exit 0
			fi

		elif [[ "$watch_choice" == "leave" ]]; then
			echo "Your sapling is now lost to time... but it was beautiful while it lasted."
			echo "Thank you for taking care of it, $username!"
			exit 0
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
	exit 1
fi
