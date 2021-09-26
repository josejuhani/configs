#!/usr/bin/env bash
# ${HOME}/.bashrc: executed by bash(1) for non-login shells.

if [ -n "$DISPLAY" ]; then
    xset b off
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# User Info
export NICKNAME="Jose"

# Distribute bashrc into smaller, more specific files
source .shells/defaults
source .shells/functions
source .shells/exports
source .shells/alias
source .shells/prompt   # Fancy with current working dir and some colors

# Welcome message
echo -ne "Welcome, $NICKNAME! It's "; date '+%A, %B %-d %Y'
echo
echo "Hardware Information:"
sensors
uptime
lsscsi
free -m
