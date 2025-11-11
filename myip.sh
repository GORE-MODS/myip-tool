#!/bin/bash

# Enhanced myip for macOS

# Color codes
YELLOW="\033[1;33m"
GREEN="\033[0;32m"
BLUE="\033[0;34m"
GRAY="\033[0;37m"
RESET="\033[0m"

echo -e "${YELLOW}==============================${RESET}"
echo -e "${YELLOW}   IP Address Info By GORE    ${RESET}"
echo -e "${YELLOW}==============================${RESET}"

# List all network interfaces and their IPs
echo -e "${GREEN}Local IPs:${RESET}"

# Loop through interfaces using ifconfig
for iface in $(ifconfig -l); do
    ip_addr=$(ifconfig "$iface" | awk '/inet / {print $2}')
    if [ -n "$ip_addr" ]; then
        printf "  %-10s : ${GREEN}%s${RESET}\n" "$iface" "$ip_addr"
    fi
done

echo -e "${GRAY}------------------------------${RESET}"

# Get public IP (if internet is available)
echo -n "Public IP: "
if ping -c 1 -t 1 8.8.8.8 >/dev/null 2>&1; then
    PUBLIC_IP=$(curl -s https://api.ipify.org)
    echo -e "${BLUE}$PUBLIC_IP${RESET}"
else
    echo -e "${BLUE}No internet connection${RESET}"
fi

echo -e "${YELLOW}==============================${RESET}"
