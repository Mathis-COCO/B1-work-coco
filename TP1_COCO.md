# I. Self-footprinting 
---
# 1. Host OS
---

```PS C:\Users\Mathis> hostname```
```LAPTOP-V8G7251P```

```PS C:\Users\Mathis> systeminfo```
````
Nom du système d’exploitation:              Microsoft Windows 10 Famille
Version du système:                         10.0.18362 N/A version 18362
````

```PS C:\Users\Mathis> systeminfo```
```Type du système:                            x64-based PC```

```PS C:\Users\Mathis> wmic memorychip get Capacity```
````
Capacity
8589934592
8589934592
````

```PS C:\Users\Mathis> wmic memorychip get Manufacturer```
````
Manufacturer
Micron
Micron
````

---
# 2. Devices
---

```PS C:\Users\Mathis> Get-WmiObject -Class Win32_Processor | Select-Object -Property Name, Number* ```
````
Name                                      NumberOfCores NumberOfEnabledCore NumberOfLogicalProcessors
----                                      ------------- ------------------- -------------------------
Intel(R) Core(TM) i7-10510U CPU @ 1.80GHz             4                   4                         8
````
``` PS C:\Users\Mathis> wmic cpu get name```
````
Name
Intel(R) Core(TM) i7-10510U CPU @ 1.80GHz
i7: modificateur de marque
10: cpu gen
510: SKU numeric digits
U: power efficient CPU
````

```PS C:\Users\Mathis> wmic path win32_VideoController get name ```
````
Name
Intel(R) UHD Graphics
````
```PS C:\Users\Mathis> wmic diskdrive get model```
````
Model
HFM512GDJTNG-8310
````
```PS C:\Users\Mathis> wmic diskdrive get partitions```
````
Partitions
3
````
```PS C:\Users\Mathis> get-partition```
````
PartitionNumber  DriveLetter Offset                                                                                                  Size Type
---------------  ----------- ------                                                                                                  ---- ----
1                            1048576                                                                                               260 MB System
2                            273678336                                                                                              16 MB Reserved
3                C           290455552                                                                                          476.03 GB Basic
4                            511428263936                                                                                          650 MB Recovery
````
````
PARTITIONS:
1: Partition réservée pour le système fonctionnel de Windows
2: Partition 
3: Partition réservée à l'utilisateur pour effectuer ses tâches
4: Partition contenant les fichiers de récupération utilisés pour réinitialiser la machine en cas de bug du système
````
---
# 3. Users
---
```PS C:\Users\Mathis> get-localuser```
````
Name               Enabled Description
----               ------- -----------
Administrateur     False   Compte d’utilisateur d’administration
DefaultAccount     False   Compte utilisateur géré par le système.
Invité             False   Compte d’utilisateur invité
Mathis             True
WDAGUtilityAccount False   Compte d’utilisateur géré et utilisé par le système pour les scénarios Windows Defender Application Guard.
````
````
L'utilisateur "Administrateur" possède tout les droits sur ma machine.
````
---
# 4. Processus
---
```PS C:\Users\Mathis> get-process```
````
conhost: conhost.exe ou Console Windows Host est un processus système de Windows localisé dans C:\Windows\system32\conhost.exe
````
````
dllhost: L'xplorateur Windows peut utiliser Com Surrogate(dllhost.exe) lorsqu'il extrait les images miniatures d'un dossier.
````
````
svchost: Les services tels que Mises à Jour Automatiques, Pare-Feu Windows, Plug and Play, Service de Télécopie et beaucoup d’autres peuvent utiliser les services de svchost pour s’exécuter. Au démarrage, svchost vérifie le registre pour des services chargeant un fichier .dll externe et les fait démarrer.
````
````
runtimebroker: Runtime Broker gère les Universal Windows Apps ou applications Windows universelles.
````
````
sihost: Le fichier authentique sihost.exe est un composant logiciel de Microsoft Windows de Microsoft .
````
---
# 5. Network
---
```PS C:\Users\Mathis> systeminfo```
````
Carte(s) réseau:                            4 carte(s) réseau installée(s).
                                            [01]: Intel(R) Wi-Fi 6 AX201 160MHz
                                                 
                                            [02]: Bluetooth Device (Personal Area Network)
                                                  
                                            [03]: Hyper-V Virtual Ethernet Adapter
                                                  
                                            [04]: VirtualBox Host-Only Ethernet Adapter
````                                       
````
carte réseau 1: carte wi-fi
caert réseau 2: carte bluetooth
carte réseau 3: adaptateur Ethernet virtuel
carte réseau 4: adaptateur Ethernet virtuel réservé à VirtualBox
````
```PS C:\WINDOWS\system32> netstat -a```
````
Connexions actives

  Proto  Adresse locale         Adresse distante       État
  TCP    0.0.0.0:135            LAPTOP-V8G7251P:0      LISTENING
  TCP    0.0.0.0:445            LAPTOP-V8G7251P:0      LISTENING
  TCP    0.0.0.0:808            LAPTOP-V8G7251P:0      LISTENING
  TCP    0.0.0.0:5040           LAPTOP-V8G7251P:0      LISTENING
  TCP    0.0.0.0:6646           LAPTOP-V8G7251P:0      LISTENING
  TCP    0.0.0.0:9001           LAPTOP-V8G7251P:0      LISTENING
  TCP    0.0.0.0:27036          LAPTOP-V8G7251P:0      LISTENING
  TCP    0.0.0.0:49664          LAPTOP-V8G7251P:0      LISTENING
  TCP    0.0.0.0:49665          LAPTOP-V8G7251P:0      LISTENING
  TCP    0.0.0.0:49666          LAPTOP-V8G7251P:0      LISTENING
  TCP    0.0.0.0:49667          LAPTOP-V8G7251P:0      LISTENING
  TCP    0.0.0.0:49668          LAPTOP-V8G7251P:0      LISTENING
  TCP    0.0.0.0:49687          LAPTOP-V8G7251P:0      LISTENING
  TCP    127.0.0.1:5354         LAPTOP-V8G7251P:0      LISTENING
  TCP    127.0.0.1:5354         LAPTOP-V8G7251P:49669  ESTABLISHED
  TCP    127.0.0.1:5354         LAPTOP-V8G7251P:49671  ESTABLISHED
  TCP    127.0.0.1:6463         LAPTOP-V8G7251P:0      LISTENING
  TCP    127.0.0.1:9010         LAPTOP-V8G7251P:0      LISTENING
  TCP    127.0.0.1:9010         LAPTOP-V8G7251P:56280  ESTABLISHED
  TCP    127.0.0.1:9080         LAPTOP-V8G7251P:0      LISTENING
  TCP    127.0.0.1:9100         LAPTOP-V8G7251P:0      LISTENING
  TCP    127.0.0.1:9100         LAPTOP-V8G7251P:56282  ESTABLISHED
  TCP    127.0.0.1:9180         LAPTOP-V8G7251P:0      LISTENING
  TCP    127.0.0.1:27015        LAPTOP-V8G7251P:0      LISTENING
  TCP    127.0.0.1:27060        LAPTOP-V8G7251P:0      LISTENING
  TCP    127.0.0.1:45654        LAPTOP-V8G7251P:0      LISTENING
  TCP    127.0.0.1:49669        LAPTOP-V8G7251P:5354   ESTABLISHED
  TCP    127.0.0.1:49671        LAPTOP-V8G7251P:5354   ESTABLISHED
  TCP    127.0.0.1:56280        LAPTOP-V8G7251P:9010   ESTABLISHED
  TCP    127.0.0.1:56282        LAPTOP-V8G7251P:9100   ESTABLISHED
  TCP    127.0.0.1:59129        LAPTOP-V8G7251P:0      LISTENING
  TCP    172.17.136.97:139      LAPTOP-V8G7251P:0      LISTENING
  TCP    192.168.1.19:139       LAPTOP-V8G7251P:0      LISTENING
  TCP    192.168.1.19:49425     40.67.251.132:https    ESTABLISHED
  TCP    192.168.1.19:55729     40.90.10.66:https      ESTABLISHED
  TCP    192.168.1.19:55730     40.90.9.180:https      ESTABLISHED
  TCP    192.168.1.19:56165     52.155.161.106:https   CLOSE_WAIT
  TCP    192.168.1.19:56278     chromecast:8009        ESTABLISHED
  TCP    192.168.1.19:56824     40.67.251.132:https    ESTABLISHED
  TCP    192.168.1.19:56969     chromecast:8008        ESTABLISHED
  TCP    192.168.1.19:56979     162.159.130.234:https  ESTABLISHED
  TCP    192.168.56.1:139       LAPTOP-V8G7251P:0      LISTENING
  TCP    192.168.120.1:139      LAPTOP-V8G7251P:0      LISTENING
  TCP    [::]:135               LAPTOP-V8G7251P:0      LISTENING
  TCP    [::]:445               LAPTOP-V8G7251P:0      LISTENING
  TCP    [::]:808               LAPTOP-V8G7251P:0      LISTENING
  TCP    [::]:9001              LAPTOP-V8G7251P:0      LISTENING
  TCP    [::]:49664             LAPTOP-V8G7251P:0      LISTENING
  TCP    [::]:49665             LAPTOP-V8G7251P:0      LISTENING
  TCP    [::]:49666             LAPTOP-V8G7251P:0      LISTENING
  TCP    [::]:49667             LAPTOP-V8G7251P:0      LISTENING
  TCP    [::]:49668             LAPTOP-V8G7251P:0      LISTENING
  TCP    [::]:49687             LAPTOP-V8G7251P:0      LISTENING
  TCP    [::1]:49670            LAPTOP-V8G7251P:0      LISTENING
  UDP    0.0.0.0:53             *:*
  UDP    0.0.0.0:500            *:*
  UDP    0.0.0.0:4500           *:*
  UDP    0.0.0.0:5050           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5355           *:*
  UDP    0.0.0.0:6646           *:*
  UDP    0.0.0.0:27036          *:*
  UDP    0.0.0.0:54915          *:*
  UDP    0.0.0.0:56063          *:*
  UDP    0.0.0.0:57899          *:*
  UDP    0.0.0.0:57900          *:*
  UDP    0.0.0.0:63040          *:*
  UDP    127.0.0.1:1900         *:*
  UDP    127.0.0.1:11978        *:*
  UDP    127.0.0.1:53672        *:*
  UDP    127.0.0.1:56065        *:*
  UDP    127.0.0.1:56066        *:*
  UDP    127.0.0.1:56067        *:*
  UDP    172.17.136.97:137      *:*
  UDP    172.17.136.97:138      *:*
  UDP    172.17.136.97:1900     *:*
  UDP    172.17.136.97:2177     *:*
  UDP    172.17.136.97:5353     *:*
  UDP    172.17.136.97:53673    *:*
  UDP    192.168.1.19:137       *:*
  UDP    192.168.1.19:138       *:*
  UDP    192.168.1.19:1900      *:*
  UDP    192.168.1.19:2177      *:*
  UDP    192.168.1.19:5353      *:*
  UDP    192.168.1.19:53671     *:*
  UDP    192.168.56.1:137       *:*
  UDP    192.168.56.1:138       *:*
  UDP    192.168.56.1:1900      *:*
  UDP    192.168.56.1:2177      *:*
  UDP    192.168.56.1:5353      *:*
  UDP    192.168.56.1:53669     *:*
  UDP    192.168.120.1:137      *:*
  UDP    192.168.120.1:138      *:*
  UDP    192.168.120.1:1900     *:*
  UDP    192.168.120.1:2177     *:*
  UDP    192.168.120.1:5353     *:*
  UDP    192.168.120.1:53670    *:*
  UDP    [::]:500               *:*
  UDP    [::]:4500              *:*
  UDP    [::]:5353              *:*
  UDP    [::]:5353              *:*
  UDP    [::]:5353              *:*
  UDP    [::]:5353              *:*
  UDP    [::]:5353              *:*
  UDP    [::]:5355              *:*
  UDP    [::]:54915             *:*
  UDP    [::]:56064             *:*
  UDP    [::]:57901             *:*
  UDP    [::1]:1900             *:*
  UDP    [::1]:5353             *:*
  UDP    [::1]:53667            *:*
  UDP    [2a01:cb18:8183:900:6890:d021:5909:4ca2]:2177  *:*
  UDP    [2a01:cb18:8183:900:a860:e383:9df5:14d1]:2177  *:*
  UDP    [fe80::5949:a19b:60d:79a8%24]:1900  *:*
  UDP    [fe80::5949:a19b:60d:79a8%24]:2177  *:*
  UDP    [fe80::5949:a19b:60d:79a8%24]:53664  *:*
  UDP    [fe80::6890:d021:5909:4ca2%17]:1900  *:*
  UDP    [fe80::6890:d021:5909:4ca2%17]:2177  *:*
  UDP    [fe80::6890:d021:5909:4ca2%17]:53666  *:*
  UDP    [fe80::98d5:243d:837b:215d%28]:1900  *:*
  UDP    [fe80::98d5:243d:837b:215d%28]:2177  *:*
  UDP    [fe80::98d5:243d:837b:215d%28]:53668  *:*
  UDP    [fe80::e4ba:3eb2:52ee:7523%15]:1900  *:*
  UDP    [fe80::e4ba:3eb2:52ee:7523%15]:2177  *:*
  UDP    [fe80::e4ba:3eb2:52ee:7523%15]:53665  *:*
 ````
 
 
````
 TCP    127.0.0.1:5354         LAPTOP-V8G7251P:49671  ESTABLISHED
[mDNSResponder.exe] :
Permet aux périphériques matériels et aux services logiciels de se configurer automatiquement sur le réseau et de se rendre publics.
````

````
  TCP    127.0.0.1:49669        LAPTOP-V8G7251P:5354   ESTABLISHED
[AppleMobileDeviceService.exe] : 
programme indispensable à la synchronisation des appareils via iTunes
````

````
  TCP    127.0.0.1:55765        LAPTOP-V8G7251P:9010   ESTABLISHED
  TCP    127.0.0.1:9010         LAPTOP-V8G7251P:55765  ESTABLISHED
[lghub.exe][lghub_agent.exe] : driver pour mes périphériques Logitech
````

````
  TCP    192.168.1.19:56117     20.44.232.74:https     ESTABLISHED
  CDPUserSvc_be678
[svchost.exe] : hôte système
````

````
  TCP    192.168.1.19:55778     chromecast:8008        TIME_WAIT
  TCP    192.168.1.19:55786     162.159.134.234:https  ESTABLISHED
[Discord.exe] : Application Discord
````
````
 TCP    192.168.1.19:56034     162.254.196.83:27039   ESTABLISHED
[steam.exe] : Application Steam
````

---
# II. Scripting 
---

````
Ce script donnera certaines des informations principales de la machine et de son environnement virtuel.
Par exemple, il donnera le nom de la machine, les informations sur le stockage, l'adresse IpV4

````
````
$machinename= [system.environment]::MachineName
Write-host "Nom de la machine:" , $machinename


$Boot = Get-CimInstance -ClassName win32_operatingsystem | select lastbootuptime
Write-Host $Boot

$OSname = (Get-WMIObject win32_operatingsystem).name
Write-Host "Le nom de votre OS est :" $OSname


$ver = (Get-WmiObject Win32_OperatingSystem).Version
Write-Host "La version de l'OS est :" $ver 

$updatecount = "Le nombre d'updates a faire sur l'OS est de:"
$updateObject = New-Object -ComObject Microsoft.Update.Session
$updateObject.ClientApplicationID = "Serverfault Example Script"
$updateSearcher = $updateObject.CreateUpdateSearcher()
$searchResults = $updateSearcher.Search("IsInstalled=0")
if ( $searchResults.Updates.Count -eq 0 ) {
Write-Host "Votre OS est à jour"
} else {
Write-Host "Votre OS n'est pas à jour. Le nombre d'updates a faire sur l'OS est de:" $searchResults.Updates.Count
}

$IPAddress = Get-WmiObject Win32_NetworkAdapterConfiguration | Where-Object {$_.Ipaddress.length -gt 1} 
Write-Host "Votre adresse IP est :" $IPAddress.ipaddress[0] 

ping 8.8.8.8

$fields = "DeviceID",@{label = "Free"; Expression = {[math]::round($_.FreeSpace / 1gb,2)}},@{label = "Total"; Expression = {[math]::round($_.Size / 1gb,2)}}
Get-WmiObject -Class Win32_LogicalDisk -Filter "DriveType=3" | format-table $fields | Out-String

Write-Host "Noms des différents utilisateurs sur cette machine :"
get-localuser | select Name
````
---
#  III. Gestion des Softs
---
* Un gestionnaire de paquet permet de vérifier l'intégrité d'un fichier téléchargé (si le fichier téléchargé est le bon et si il n'y a pas de faille dans le code)
* Il peut aussi vérifier si le site de téléchargement ne renvoie pas vers un autre site.
* On peut télécharger des fichiers avec la commande apt-get et ça sécurise les téléchargements.
* Les gestionnaires de packets permettent d'éviter des potentiels hackers situés entre l'émetteur du fichier (le site) et le récepteur (l'utilisateur).
* Parmi les différents acteurs du téléchargement, on retrouve : 
  - l'hébergeur (le site de téléchargement)
  - le téléchargeur (la personne qui fait la requête de téléchargement)
---
* La commande "choco list" utilisée dans le terminal ressort le nombre de packets déjà installés sur ma machine, la commande en a trouvé 5674.


# IV. Machine Virtuelle 

* 1,2) Machine virtuelle installée et configurée

* 3) La liste des cartes réseaux ressort 3 cartes différentes dont la carte enp0s8 qui ne possède pas d'adresse Ip.
* On lui attribue donc une adresse en utilisant la commande ifup enp0s8
* Ensuite, j'ai à nouveau fait la commande ip a pour vérifier que la carte réseau enp0s8 possède un adresse IP. Son adresse est 192.168.120.50
* Une fois toutes ces étapes effectuées, je teste la connexion ssh depuis le Powershell de ma machine personnelle en écrivant "ssh mathis@192.168.120.50" (adresse de enp0s8)

4. Pour le partage de fichier j'ai commencé à installer le logiciel Samba 
* Ensuite, sur mon pc, j'ai ouvert mon panneau de configuration, puis je suis allé dans l'onglet programmes : 
![](https://i.imgur.com/ly8gM2V.png)
Une fois dans cet onglet, je suis allé dans "Activer ou désactiver des fonctionnalités Windows":
![](https://i.imgur.com/PeOtKdr.png)
Une fois dans ce menu, j'active le support de partage des fichiers SMB:
![](https://i.imgur.com/SBJoTYW.png)
Une fois fait, j'applique l'option.
On me propose donc de redémarrer mon PC.
![](https://i.imgur.com/eb789RM.png)
Une fois le PC redémarré, j'ai relancé ma VM, je me suis connecté et j'ai rentré la commande "yum install -y cifs-utils"
Puis j'ai rentré la commande "mkdir /opt/partage"
J'ai par la suite créé un dossier vide sur mon bureau que j'ai nommé "share". J'ai fait un click droit sur ce dossier puis fait "Propriété -> Partage"
![](https://i.imgur.com/sjoTs9A.png)
Je suis ensuite allé dans "Partage Avancé -> Autorisations" et j'ai coché la case "Contrôle total"
![](https://i.imgur.com/5hGfFFK.png)
Je suis reparti dans la VM et j'ai rentré la commande "mount -t cifs -o username=Mathis,password=mon mdp perso //192.168.120.1/share /opt/partage"
Je n'arrivais pas à trouver mon mot de passe du PC donc j'ai relancé mon pc pour tester un changement de mdp et une fois relancé impossible de me connecter aux comptes de ma VM.
Voici ce que la VM m'affiche: 
![](https://i.imgur.com/uTmLueq.png)
Je peux donc pas continuer ce TP mais je sais qu'après cette commande je suis censé avoir accès au partage depuis ma VM.
Avec la commande "cd opt/partage" on se met dans le dossier partage puis on rentre la commande "touch nom_du_fichier" par exemple "touch test.txt"  qui mettra le fichier créé dans le dossier "share".
![](https://i.imgur.com/ajS8hHV.png)

![](https://i.imgur.com/68KK6Fw.png)
