#!/bin/bash
username="newuser"

if id "$username" &>/dev/null; then
    echo "User $username already exists."
else
    sudo useradd -m "$username"
    echo "User $username created."
fi



