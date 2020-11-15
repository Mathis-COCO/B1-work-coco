$temps = $args[1]
$commande = $args[0]

if($commande -eq "lock"){
    Start-Sleep $temps
    rundll32.exe user32.dll,LockWorkStation
} elseIf($commande -eq "shutdown") {
    Start-Sleep $temps
    shutdown /s
}