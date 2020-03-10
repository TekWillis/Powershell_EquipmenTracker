# get device type
$device = read-host "Enter Device:
'L' for laptop
'D' for Desktop
'M' for Montitor
'P' for Printer "

#asset tag either creates or appends the exisiting info to the already exisiting file. 
$asset = Read-Host "Enter the asset tag of the device "

#gets the "point A" location of the device.
$from = read-host "Enter Location of the devices orignating location "

#gets the "point B" location of the device. 
$to = read-host "Enter device destination "

# write's appending below information to the file. 
Write-Output -Force -ItemType File "C:\temp\ps_E_Tracker\$asset.txt"

# appending vairable data to file for storage. 
Get-Date >> "C:\temp\ps_E_Tracker\$asset.txt"
$device >> "C:\temp\ps_E_Tracker\$asset.txt" 
$asset >> "C:\temp\ps_E_Tracker\$asset.txt"
$from >> "C:\temp\ps_E_Tracker\$asset.txt"
$to >> "C:\temp\ps_E_Tracker\$asset.txt"

# clears termainal and then runs the script again for ease of use or simple error correction
Clear-Host
.\equipTest.ps1
