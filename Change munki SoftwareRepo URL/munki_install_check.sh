#!/bin/sh

# (c) 2015 Sean Bowen Trinity Lutheran Church, Spring TX

# Script to check the current munki software repo URL

if [[ $(defaults read /Library/Preferences/ManagedInstalls SoftwareRepoURL | grep -i tk-macpkg.local | tr A-Z a-z) = 'http://tk-macpkg.local/munki_repo' ]]; then
	echo "Need to change URL!"
	exit 0	
fi

echo "URL is OK."
exit 1