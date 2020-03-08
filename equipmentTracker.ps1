$device = read-host "Enter Device:
'L' for laptop
'D' for Desktop
'M' for Montitor
'P' for Printer "

$asset = Read-Host "Enter the asset tag of the device "


$from = read-host "Enter Location of the devices orignating location "
$to = read-host "Enter device destination "

$file = new-item -Path "C:\temp\ps_E_Tracker\$asset.txt" -ItemType File
$device >> "C:\temp\ps_E_Tracker\$asset.txt"
$asset >> "C:\temp\ps_E_Tracker\$asset.txt"
$from >> "C:\temp\ps_E_Tracker\$asset.txt"
$to >> "C:\temp\ps_E_Tracker\$asset.txt"








