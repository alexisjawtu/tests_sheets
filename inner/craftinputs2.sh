#!/usr/bin/bash

# crafting a collection of inputs

for i in 1 2 3 4 5 6 7 8 9
do
	var=$(grep -c folder_missing case0$i/input.json)
	var2=$(grep folder_missing case0$i/input.json)
	echo $var $var2 > case0$i/sorted_input.json

	var=$(grep -c wafer_type case0$i/input.json)
	var2=$(grep wafer_type case0$i/input.json)
	echo $var $var2 >> case0$i/sorted_input.json

	var=$(grep -c user_diameter_for_wafer case0$i/input.json)
	var2=$(grep user_diameter_for_wafer case0$i/input.json)
	echo $var $var2 >> case0$i/sorted_input.json

	var=$(grep -c user_thickness_of_inner_wafer case0$i/input.json)
	var2=$(grep user_thickness_of_inner_wafer case0$i/input.json)
	echo $var $var2 >> case0$i/sorted_input.json

	var=$(grep -c scale case0$i/input.json)
	var2=$(grep scale case0$i/input.json)
	echo $var $var2 >> case0$i/sorted_input.json

	var=$(grep -c probe_x case0$i/input.json)
	var2=$(grep probe_x case0$i/input.json) 
	echo $var $var2 >> case0$i/sorted_input.json

	var=$(grep -c probe_y case0$i/input.json)
	var2=$(grep probe_y case0$i/input.json) 
	echo $var $var2 >> case0$i/sorted_input.json

	var=$(grep -c theta_p case0$i/input.json)
	var2=$(grep theta_p case0$i/input.json) 
	echo $var $var2 >> case0$i/sorted_input.json

	var=$(grep -c pitch case0$i/input.json)
	var2=$(grep pitch case0$i/input.json) 
	echo $var $var2 >> case0$i/sorted_input.json

	var=$(grep -c len_orient_flat_1 case0$i/input.json)
	var2=$(grep len_orient_flat_1 case0$i/input.json) 
	echo $var $var2 >> case0$i/sorted_input.json

	var=$(grep -c len_orient_flat_2 case0$i/input.json)
	var2=$(grep len_orient_flat_2 case0$i/input.json) 
	echo $var $var2 >> case0$i/sorted_input.json

	var=$(grep -c angle_diff case0$i/input.json)
	var2=$(grep angle_diff case0$i/input.json) 
	echo $var $var2 >> case0$i/sorted_input.json
done
