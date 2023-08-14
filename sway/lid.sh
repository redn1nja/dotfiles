#!/usr/bin/env bash
pidof swaylock
if [ $? -eq 1 ];
then
	swaylock -C ~/.config/swaylock/config
fi
