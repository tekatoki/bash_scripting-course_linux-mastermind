#!bin/bash
# This code simulates a installation of linux such as 'sudo apt install', 'pacman -S' or 'dnf module install'

echo -n 'Do you want to continue the installation [Y/N]: '
read user_message

if [[ $user_message == [yY] ]]; then 
    echo 'Continuing the installation...'
    echo 'Installing the dependences...'
    echo 'Installing the packages...'
elif [[ $user_message == [nN] ]]; then
    echo 'Canceling the installation...'
else
    echo 'Invalid option, please write a valid answer'
fi
