#!/usr/bin/env bash
pacman_updates=$(checkupdates 2>&1)
yay_updates=$(yay --aur -Qu 2>&1 | wc -l)
pacman_updates=$(echo "$pacman_updates" | wc -l)
updates=$((pacman_updates + yay_updates))
echo "$updates"

