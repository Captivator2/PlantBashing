echo "Welcome to PlantBashing! Lets grow something great!"
echo
read -p "Whats your name,gardener?" Vincent

echo
echo "Nice to meet you, $Vincent. Let's get planting!"
sleep 3
echo "Goodbye for now, $Vincent!"
exit 0
echo ""
read -p "Do you want to plant a new seed? (yes/no):" plant_choice

if [[ "$plant_choice" == "yes" ]]; then
	echo "You dig a small hole and genlty plant a seed the sze of a raindrop."
elif [[ "$plant_choice" == "no" ]]; then
	echo "In this digital garden, time moves faster than your world..."
	sleep 2
	read -p "Do you want to wait and see if the seed will grow? (yes/no): " wait_choice

	if [[ "$wait_choice" == "yes" ]]; then
		echo "Waiting one day..."
		sleep 1
	else
		echo "Goodbye, caretaker. See you next time!"
		exit 0
	fi
else
	echo "Invalid choice. Please run the game again."
	exit 1
fi