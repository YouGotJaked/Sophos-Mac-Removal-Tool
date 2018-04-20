#!/bin/sh

#remove directories
WORKING_DIR=('/Library/Sophos Anti-Virus' '/Library/Application Support/Sophos')
for i in "${WORKING_DIR[@]}"
do
	if [ -d "$i" ]; then
		echo "Removing $i"
		rm -Rf "$i"
	fi
done

#remove 'com.sophos.*' files
WORKING_DIR=('/Library/Preferences' '/Library/LaunchDaemons' '/Library/LaunchAgents' '/Library/Caches')
for i in "${WORKING_DIR[@]}"
do
    find "$i" -maxdepth 1 -name 'com.sophos.*' -delete
done

#remove 'Sophos' files
WORKING_DIR='/Library/Extensions'
find "$WORKING_DIR" -name 'Sophos*' -delete
