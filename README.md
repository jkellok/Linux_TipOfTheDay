# Introduction

This is a tool to show linux related information with every login.

## Mandatory requirements for script

Shows a new tip with every new terminal session.
Round robin for the tips: 1st, 2nd, ... last, 1st ...

## Setup instructions

Clone the repo to your machine

Open your bash shell (Ubuntu, git bash...) and move to the directory where you placed the filed

Make the script executable
````chmod +x linuxtips.sh````

Place linuxtips.sh and the folder tips/ to /etc/profile.d/ directory
Then the script will run on every login globally to all users
````mv linuxtips.sh tips /etc/profile.d/````

If you want the script to be user-specific, place it in
````/home/$USER/.profile````

At login you can cycle tips forward with "j" and press any other key to quit program