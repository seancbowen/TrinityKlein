#!/bin/sh

# (c) 2015 Sean Bowen Trinity Lutheran Church, Spring TX

# Script to change the SoftwareRepoURL in the ManagedInstall.plist

sudo defaults write /Library/Preferences/ManagedInstalls SoftwareRepoURL http://tk-macpkg.trinityklein.net/munki_repo

exit 0