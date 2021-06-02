# WINDOWS TERMINAL SSH MENU

## WHAT?

A super simple batch script that lets you select which machine to SSH into. Useful when used with [Microsoft Windows Terminal](https://github.com/microsoft/terminal).

## WHY?

I have a bunch of machines that I don't want seperate Windows Terminals for. By setting Windows Terminal to run this script on startup, it lets me easily pick which machine to connect to.

## HOW?

Save the script into a common location. I save it to my ONEDRIVE folder so then its synced across all my machines. 

Edit the script to add your machines. It's pretty self explanatory. Update the menu, goto points, and ssh commands.

Set Windows Terminal to run the script on startup.
In the settings, have the command line point to the script using ```%USERPROFILE\OneDrive\WindowsTerminal\menu.bat``` (or your equivalent)
