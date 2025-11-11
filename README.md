# myip simple, command easy.
A ip command for linux, windows, and mac

# -----------------------------------------------------------

# LINUX

# Put it into this place using files or smth /usr/local/bin/
# Run this command to make it work if it does not work if you type myip in your terminal: sudo chmod +x /usr/local/bin/myip

# -----------------------------------------------------------

# WINDOWS

# By default, PowerShell may block scripts. Run PowerShell as Administrator and execute: Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# Type Y to confirm.

# This allows you to run your own scripts.

# Put myip.ps1 in a folder, e.g., C:\Scripts.

# Add that folder to your system PATH:

# Right-click This PC → Properties → Advanced system settings → Environment Variables → Path → Edit → New → Add C:\Scripts.

# Now you can call it with: powershell -ExecutionPolicy Bypass -File myip.ps1

# Option B: Create a function in your PowerShell profile

# Open your profile: notepad $PROFILE

# Add this line at the end: function myip { & "C:\Scripts\myip.ps1" }

# Save and restart PowerShell.

# Now you can just type: myip

# -----------------------------------------------------------

# MacOS

# Open Terminal and navigate to where you saved it, for example: cd ~/Documents

# Make it executable: chmod +x myip.sh

# Run it with: ./myip.sh

# If you want to be able to run it from anywhere (like a built-in command), move it to /usr/local/bin: sudo mv myip.sh /usr/local/bin/myip sudo chmod +x /usr/local/bin/myip

# Then you can just type: myip

# and it’ll work system-wide — your very own command.

# -----------------------------------------------------------
