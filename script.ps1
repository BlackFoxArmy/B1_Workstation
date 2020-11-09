#BlackFox (MCHASSON)
# 19/10/2020
# TP1 resolution 
hostname # permet d'avoir le nom de la machine 
Get-WmiObject Win32_OperatingSystem | Select-Object Caption, Version, ServicePackMajorVersion, OSArchitecture, CSName, WindowsDirectory, NumberOfUsers, BootDevice # permet d'avoir l'OS + La version + d'autre information 
ping 8.8.8.8 # fait une requete a ladresse en question
Write-Output ' ' # le echo est juste la pour que la presentation soit plus propre 
ipconfig | Where-Object { $_ -match 'Ipv4.*: ((\d{1,3}\.){3}\d{1,3})' }| Select-Object @{n="IPv4";e={$Matches[1]}} # permet d'avoir IPV4 
Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object  LastBootUpTime #permet d'avoir la date et heure d'allumage du pc 

$OperatingSystem = Get-WmiObject win32_OperatingSystem # je creer une variable pour recuperer la memoire use et non utilisé
$FreeMemory = $OperatingSystem.FreePhysicalMemory # je re créer une variable pour recuperer ces données
$TotalMemory = $OperatingSystem.TotalVisibleMemorySize #je stock tout ça dans une nouvelle variable 
$MemoryUsed = ($FreeMemory/ $TotalMemory) * 100 # je multiplie ce nombre pour pouvoir l'afficher en procentage 
$PercentMemoryUsed = "{0:N2}" -f $MemoryUsed

Write-Output "RAM"
Write-Output "Free : $FreeMemory octets" # j'affiche le nombre d'espace dispo 
Write-Output "Pourcentage $PercentMemoryUsed %" #je l'affiche en procentage 
Write-Output ' ' # le echo est juste la pour que la presentation soit plus propre 
Get-LocalUser  | Select-Object -Property Name  -ExpandProperty  name
Write-Output ' ' # le echo est juste la pour que la presentation soit plus propre
$disk = Get-WmiObject -Class Win32_logicaldisk # prend le stockage use du disk 
$disk.FreeSpace
(Get-WmiObject -Class Win32_logicaldisk).FreeSpace # Affiche la valeur du disque 


