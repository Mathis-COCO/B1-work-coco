#créé par Mathis Coco
#TP1 B1B Windows Client
#à rendre pour le 16/11/2020
#Ce script donnera certaines des informations principales de la machine et de son environnement virtuel.
#Par exemple, il donnera le nom de la machine, les informations sur le stockage, l'adresse IpV4

Write-Host " "
$machinename= [system.environment]::MachineName
Write-host -fore blue "Nom de la machine:" 
Write-Host $machinename


$Boot = Get-CimInstance -ClassName win32_operatingsystem | select lastbootuptime
Write-Host $Boot

Write-Host " "

$OSname = (Get-WMIObject win32_operatingsystem).name
Write-Host -fore blue "Le nom de votre OS est :"
Write-Host $OSname


$ver = (Get-WmiObject Win32_OperatingSystem).Version
Write-Host -fore blue "La version de l'OS est :" 
Write-Host $ver 

$updatecount = "Le nombre d'updates a faire sur l'OS est de:"
$updateObject = New-Object -ComObject Microsoft.Update.Session
$updateObject.ClientApplicationID = "Serverfault Example Script"
$updateSearcher = $updateObject.CreateUpdateSearcher()
$searchResults = $updateSearcher.Search("IsInstalled=0")
if ( $searchResults.Updates.Count -eq 0 ) {
Write-Host -fore blue "Votre OS est a jour"
} else {
Write-Host -fore blue "Votre OS n'est pas a jour. Le nombre d'updates a faire sur l'OS est de:" $searchResults.Updates.Count
}

Write-Host " "

$IPAddress = Get-WmiObject Win32_NetworkAdapterConfiguration | Where-Object {$_.Ipaddress.length -gt 1} 
Write-Host -fore blue "Votre adresse IP est :"
Write-Host $IPAddress.ipaddress[0] 

ping 8.8.8.8

Write-Host " "

Write-Host -fore blue "Espace disque (en Gb):"
$fields = "DeviceID",@{label = "Free"; Expression = {[math]::round($_.FreeSpace / 1gb,2)}},@{label = "Total"; Expression = {[math]::round($_.Size / 1gb,2)}}
Get-WmiObject -Class Win32_LogicalDisk -Filter "DriveType=3" | format-table $fields | Out-String

Write-Host -fore blue "Noms des differents utilisateurs sur cette machine :"
get-localuser | select Name