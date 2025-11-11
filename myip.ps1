# Enhanced MyIP with colors - PowerShell version

# Color definitions
$YELLOW = "`e[1;33m"
$GREEN  = "`e[0;32m"
$BLUE   = "`e[0;34m"
$GRAY   = "`e[0;37m"
$RESET  = "`e[0m"

Write-Host "${YELLOW}==============================" -NoNewline
Write-Host
Write-Host "${YELLOW}   IP Address Info By GORE   " -NoNewline
Write-Host
Write-Host "${YELLOW}==============================" -NoNewline
Write-Host

# List all network interfaces and their IPv4 addresses
Write-Host "${GREEN}Local IPs:${RESET}"
Get-NetIPAddress -AddressFamily IPv4 | ForEach-Object {
    $iface = $_.InterfaceAlias
    $ip = $_.IPAddress
    Write-Host ("  {0,-15} : {1}{2}{3}" -f $iface, $GREEN, $ip, $RESET)
}

Write-Host "${GRAY}------------------------------${RESET}"

# Get public IP
Write-Host -NoNewline "Public IP: "
try {
    $PUBLIC_IP = Invoke-RestMethod -Uri "https://api.ipify.org"
    Write-Host "${BLUE}$PUBLIC_IP${RESET}"
} catch {
    Write-Host "${BLUE}No internet connection${RESET}"
}

Write-Host "${YELLOW}==============================" -NoNewline
Write-Host
