# TP1 

## **- Host os**
```
Pour acceder aux infos systemes , il faut faire "systeminfo" dans le powershell 
```

```
Nom de l’hôte:                              LAPTOP-6LNI85PH
Nom du système d’exploitation:              Microsoft Windows 10 Famille
Version du système:                         10.0.18363 N/A version 18363
Fabricant du système d’exploitation:        Microsoft Corporation
Configuration du système d’exploitation:    Station de travail autonome
Type de version du système d’exploitation:  Multiprocessor Free
Propriétaire enregistré:                    Max
Organisation enregistrée:                   HP
Identificateur de produit:                  00325-81765-96717-AAOEM
Date d’installation originale:              11/09/2020, 07:58:42
Heure de démarrage du système:              08/10/2020, 09:05:05
Fabricant du système:                       HP
Modèle du système:                          OMEN Laptop 15-ek0xxx
Type du système:                            x64-based PC
Processeur(s):                              1 processeur(s) installé(s).
                                            [01] : Intel64 Family 6 Model 165 Stepping 2 GenuineIntel ~2592 MHz
Version du BIOS:                            AMI F.05, 27/07/2020
Répertoire système:                         C:\windows\system32
Périphérique d’amorçage:                    \Device\HarddiskVolume1
Option régionale du système:                fr;Français (France)
Paramètres régionaux d’entrée:              fr;Français (France)
Fuseau horaire:                             (UTC+01:00) Bruxelles, Copenhague, Madrid, Paris
Mémoire physique totale:                    16 223 Mo
Mémoire physique disponible:                8 572 Mo
Mémoire virtuelle : taille maximale:        21 087 Mo
Mémoire virtuelle : disponible:             8 541 Mo
Mémoire virtuelle : en cours d’utilisation: 12 546 Mo
Emplacements des fichiers d’échange:        C:\pagefile.sys
Domaine:                                    WORKGROUP
Serveur d’ouverture de session:             \\LAPTOP-6LNI85PH
```

* **Nom de la machine** : LAPTOP-6LNI85PH 
* **OS + Version** : Microsoft Windows 10 Famille , version  10.0.18363 N/A version 18363
* **Architecture processeur** :  x64-based PC

```
Pour avoir la quantité et le modèle des RAM, il faut faire la commande "Get-CimInstance win32_physicalmemory"
```
```
PS C:\Users\Max\b1_workstation> Get-CimInstance win32_physicalmemory


Caption              : Mémoire physique
Description          : Mémoire physique
InstallDate          :
Name                 : Mémoire physique
Status               :
CreationClassName    : Win32_PhysicalMemory
Manufacturer         : Samsung
Model                :
OtherIdentifyingInfo :
PartNumber           : M471A1K43DB1-CWE
PoweredOn            :
SerialNumber         : 15B6AB35
SKU                  :
Tag                  : Physical Memory 0
Version              :
HotSwappable         :
Removable            :
Replaceable          :
FormFactor           : 12
BankLabel            : BANK 0
Capacity             : 8589934592
DataWidth            : 64
InterleavePosition   : 0
MemoryType           : 0
PositionInRow        : 1
Speed                : 3200
TotalWidth           : 64
Attributes           : 1
ConfiguredClockSpeed : 2933
ConfiguredVoltage    : 1200
DeviceLocator        : Bottom - Slot 1 (left)
InterleaveDataDepth  : 0
MaxVoltage           : 1200
MinVoltage           : 1200
SMBIOSMemoryType     : 26
TypeDetail           : 128
PSComputerName       :

Caption              : Mémoire physique
Description          : Mémoire physique
InstallDate          :
Name                 : Mémoire physique
Status               :
CreationClassName    : Win32_PhysicalMemory
Manufacturer         : Samsung
Model                :
OtherIdentifyingInfo :
PartNumber           : M471A1K43DB1-CWE
PoweredOn            :
SerialNumber         : 15B696BE
SKU                  :
Tag                  : Physical Memory 1
Version              :
HotSwappable         :
Removable            :
Replaceable          :
FormFactor           : 12
BankLabel            : BANK 2
Capacity             : 8589934592
DataWidth            : 64
InterleavePosition   : 0
MemoryType           : 0
PositionInRow        : 1
Speed                : 3200
TotalWidth           : 64
Attributes           : 1
ConfiguredClockSpeed : 2933
ConfiguredVoltage    : 1200
DeviceLocator        : Bottom - Slot 2 (right)
InterleaveDataDepth  : 0
MaxVoltage           : 1200
MinVoltage           : 1200
SMBIOSMemoryType     : 26
TypeDetail           : 128
PSComputerName       :
```

* **Quantité RAM et modèle de la RAM** : 16 223 Mo (16 GO) RAM ; Modèle :  Samsumg M471A1K43DB1-CWE 

## **- Device** 

* **La marque et le modèle de votre processeur** : InteL , Core i7-10750H 
``` 
Pour savoir le nombre de coeur , on utilise "WMIC CPU Get DeviceID,NumberOfCores,NumberOfLogicalProcessors"
```
```
PS C:\Users\Max\b1_workstation> WMIC CPU Get DeviceID,NumberOfCores,NumberOfLogicalProcessors
DeviceID  NumberOfCores  NumberOfLogicalProcessors
CPU0      6              12
``` 
* - **Identifier le nombre de processeurs et le nombre de coeur** : Le pc possède 1 processeur avec 6 coeurs 

* - **Si c'est un proc Intel, expliquer le nom du processeur** : i7-10750H || **I7** : numéro de série || **10** pour la génération || **750** SNK || **H** Processeur doté de cartes graphiques intégrées hautes performances.
* - **La marque et le modèle de la carte graphique** 
``` 
Pour la carte graphique , il faut taper "Get-WmiObject Win32_VideoController | Select description,driverversion" ```
```PS C:\Users\Max\b1_workstation> Get-WmiObject Win32_VideoController | Select description,driverversion

description             driverversion
-----------             -------------
NVIDIA GeForce RTX 2060 27.21.14.5671 
```
* C'est une RTX 2060 de chez NVIDIA 

## **- Disque dur**
``` Pour recuperer les infos disques, il faut faire un "Get-PhysicalDisk" ```
```PS C:\Users\Max\b1_workstation> Get-PhysicalDisk

Number FriendlyName        SerialNumber                             MediaType CanPool OperationalStatus HealthStatus Usage
------ ------------        ------------                             --------- ------- ----------------- ------------ --
0      KXG60ZNV512G KIOXIA 0000_0000_0000_0001_8CE3_8E05_0024_69A0. SSD       False   OK                Healthy      Au 

```
* **Identifier la marque et le modèle de votre(vos) disque(s) dur(s)** : c'est un Toshiba XG6 KXG60ZNV512G Disque Dur SSD NVMe M.2 22 

* **Identifier les différentes partitions de votre/vos disque(s) dur(s**) : 

```
Diskpart  (entre dans le gestionnaire de disque) 
list disk (liste les disques) 
select disk n (n= numéro du disque) 
list partition (liste les partitions)
```

```DISKPART> list partition

  N° partition   Type              Taille   Décalage
  -------------  ----------------  -------  --------
  Partition 1    Système            260 M   1024 K
  Partition 2    Réservé             16 M    261 M
  Partition 3    Principale         476 G    277 M
  Partition 4    Récupération       508 M    476 G

DISKPART>
``` 
* **Déterminer le système de fichier de chaque partition**

```Il faut marquer " list volume" dans le gestionnaire de disque ```
```
DISKPART>  list volume

N° volume   Ltr  Nom          Fs     Type        Taille   Statut     Info
----------  ---  -----------  -----  ----------  -------  ---------  --------
Volume 0     C   Windows      NTFS   Partition    476 G   Sain       Démarrag
Volume 1         SYSTEM       FAT32  Partition    260 M   Sain       Système

DISKPART>
```

* Pour le Windows c'est NTFS et pour le system c'est du FAT32
* **Expliquer la fonction de chaque partition**

* - La Partition 1 est utilisé pour la partie systeme (OS)
* - La Partition 2 est utilisé Elle stocke les fichiers de démarrage de Windows 10
* - La Partition 3 est utilisé pour lancer windows 
* - La Partition 4 est utilisé pour la récupération systeme en cas de problème avec celui-ci 

# User
``` 
Pour avoir les users, il faut faire "Get-WmiObject -Class Win32_UserAccount"
``` 
```
PS C:\Users\Max\b1_workstation> Get-WmiObject -Class Win32_UserAccount


AccountType : 512
Caption     : LAPTOP-6LNI85PH\Administrateur
Domain      : LAPTOP-6LNI85PH
SID         : S-1-5-21-1981045671-1720016489-871860308-500
FullName    :
Name        : Administrateur

AccountType : 512
Caption     : LAPTOP-6LNI85PH\DefaultAccount
Domain      : LAPTOP-6LNI85PH
SID         : S-1-5-21-1981045671-1720016489-871860308-503
FullName    :
Name        : DefaultAccount

AccountType : 512
Caption     : LAPTOP-6LNI85PH\Invité
Domain      : LAPTOP-6LNI85PH
SID         : S-1-5-21-1981045671-1720016489-871860308-501
FullName    :
Name        : Invité

AccountType : 512
Caption     : LAPTOP-6LNI85PH\Max
Domain      : LAPTOP-6LNI85PH
SID         : S-1-5-21-1981045671-1720016489-871860308-1001
FullName    :
Name        : Max

AccountType : 512
Caption     : LAPTOP-6LNI85PH\WDAGUtilityAccount
Domain      : LAPTOP-6LNI85PH
SID         : S-1-5-21-1981045671-1720016489-871860308-504
FullName    :
Name        : WDAGUtilityAccount



PS C:\Users\Max\b1_workstation>
```
* **La liste complète des utilisateurs de la machine** : Comme on peut le voir au dessus, je n'ai que 5 users 

* **Pour les Windowsiens : faites des recherches sur NT-AUTHORITY\SYSTEM et le concept de SID**

* **NT-AUTHORITY \ SYSTEM** est le nom d'un ID de sécurité, qui n'est ni un groupe ni un compte. Il est affiché dans le Gestionnaire des tâches en tant que SYSTÈME s'il s'agit du SID principal d'un programme. 

* Au lieu d’utiliser des noms (non unique), le système d’exploitation Windows utilise des **SID (Security Identifiers)** pour identifier les entités effectuant des actions. Ce sont des identifiants uniques et immuables de sécurité alphanumériques assignés par un contrôleur de domaine qui identifient chaque système, utilisateur ou objet (groupe) dans un réseau ou sur une machine. Certains SID sont identiques sur tous les systèmes . Windows autorise ou refuse des accès et des privilèges à des ressources en se basant sur des listes de contrôle d'accès. 

# Processus
```
Pour voir les services systèmes, il faut faire "tasklist"
```
```
PS C:\Users\Max\b1_workstation> tasklist

Nom de l’image                 PID Nom de la sessio Numéro de s Utilisation
========================= ======== ================ =========== ============
System Idle Process              0 Services                   0         8 Ko
System                           4 Services                   0     1 848 Ko
Registry                       144 Services                   0    91 888 Ko
smss.exe                       556 Services                   0     1 200 Ko
csrss.exe                      816 Services                   0     5 604 Ko
wininit.exe                    904 Services                   0     7 008 Ko
csrss.exe                      912 Console                    1     5 392 Ko
services.exe                   976 Services                   0    10 600 Ko
lsass.exe                     1000 Services                   0    18 864 Ko
winlogon.exe                   584 Console                    1    12 392 Ko
svchost.exe                   1056 Services                   0     3 956 Ko
svchost.exe                   1088 Services                   0    31 520 Ko
fontdrvhost.exe               1112 Services                   0     3 480 Ko
fontdrvhost.exe               1120 Console                    1     4 140 Ko
WUDFHost.exe                  1176 Services                   0     7 100 Ko
svchost.exe                   1244 Services                   0    17 692 Ko
svchost.exe                   1308 Services                   0     8 836 Ko
dwm.exe                       1376 Console                    1    58 948 Ko
svchost.exe                   1464 Services                   0     7 776 Ko
svchost.exe                   1496 Services                   0     8 936 Ko
svchost.exe                   1512 Services                   0    12 452 Ko
svchost.exe                   1528 Services                   0    12 212 Ko
svchost.exe                   1680 Services                   0     6 036 Ko
svchost.exe                   1748 Services                   0    16 040 Ko
svchost.exe                   1812 Services                   0    12 320 Ko
svchost.exe                   1820 Services                   0    11 036 Ko
svchost.exe                   1828 Services                   0    12 480 Ko
svchost.exe                   1840 Services                   0     9 680 Ko
svchost.exe                   1948 Services                   0     8 832 Ko
svchost.exe                   1980 Services                   0     7 936 Ko
svchost.exe                   1624 Services                   0    10 272 Ko
svchost.exe                   2092 Services                   0    20 336 Ko
svchost.exe                   2148 Services                   0     7 428 Ko
svchost.exe                   2156 Services                   0     7 240 Ko
svchost.exe                   2180 Services                   0     8 380 Ko
svchost.exe                   2428 Services                   0    10 088 Ko
svchost.exe                   2448 Services                   0     6 504 Ko
svchost.exe                   2524 Services                   0     8 192 Ko
AppHelperCap.exe              2540 Services                   0    16 860 Ko
TouchpointAnalyticsClient     2548 Services                   0    60 336 Ko
SysInfoCap.exe                2556 Services                   0    21 824 Ko
OmenCap.exe                   2560 Services                   0    63 780 Ko
NetworkCap.exe                2572 Services                   0    11 696 Ko
svchost.exe                   2644 Services                   0     9 976 Ko
PresentationFontCache.exe     2700 Services                   0    28 992 Ko
svchost.exe                   2808 Services                   0    13 168 Ko
svchost.exe                   2840 Services                   0    22 136 Ko
svchost.exe                   2848 Services                   0     8 660 Ko
svchost.exe                   2916 Services                   0    11 644 Ko
svchost.exe                   2924 Services                   0    11 856 Ko
svchost.exe                   1620 Services                   0     9 104 Ko
svchost.exe                   3128 Services                   0     9 732 Ko
svchost.exe                   3240 Services                   0    23 200 Ko
SynTPEnhService.exe           3312 Services                   0    10 152 Ko
NVDisplay.Container.exe       3352 Services                   0    18 548 Ko
svchost.exe                   3436 Services                   0    12 936 Ko
svchost.exe                   3448 Services                   0     5 880 Ko
svchost.exe                   3496 Services                   0     8 504 Ko
svchost.exe                   3504 Services                   0    12 880 Ko
Memory Compression            3532 Services                   0          N/A
NVDisplay.Container.exe       3552 Console                    1    48 364 Ko
svchost.exe                   3724 Services                   0    27 992 Ko
svchost.exe                   3820 Services                   0    14 476 Ko
sihost.exe                    3856 Console                    1    32 892 Ko
svchost.exe                   3900 Console                    1    29 544 Ko
svchost.exe                   3908 Console                    1     8 356 Ko
svchost.exe                   3976 Console                    1    44 688 Ko
taskhostw.exe                 3792 Console                    1    16 956 Ko
svchost.exe                   4124 Services                   0    22 496 Ko
svchost.exe                   4224 Services                   0     6 748 Ko
svchost.exe                   4240 Services                   0    10 420 Ko
audiodg.exe                   4264 Services                   0    19 956 Ko
svchost.exe                   4488 Services                   0    21 156 Ko
svchost.exe                   4564 Services                   0    12 644 Ko
explorer.exe                  4636 Console                    1   126 980 Ko
svchost.exe                   4688 Services                   0    20 060 Ko
svchost.exe                   4748 Services                   0     6 508 Ko
spoolsv.exe                   4872 Services                   0    15 156 Ko
ctfmon.exe                    4900 Console                    1    14 436 Ko
svchost.exe                   4992 Services                   0    21 772 Ko
svchost.exe                   5100 Services                   0     8 316 Ko
wlanext.exe                   1364 Services                   0     5 716 Ko
conhost.exe                   5128 Services                   0    10 644 Ko
WmiPrvSE.exe                  5300 Services                   0    10 372 Ko
WmiPrvSE.exe                  5308 Services                   0    18 644 Ko
unsecapp.exe                  5512 Services                   0     6 872 Ko
SASCore64.exe                 5808 Services                   0     6 532 Ko
svchost.exe                   5832 Services                   0    33 172 Ko
DtsApo4Service.exe            5840 Services                   0    15 080 Ko
IntelCpHDCPSvc.exe            5848 Services                   0     5 332 Ko
ibtsiva.exe                   5876 Services                   0     4 820 Ko
OneApp.IGCC.WinService.ex     5892 Services                   0    37 944 Ko
svchost.exe                   5900 Services                   0    19 008 Ko
svchost.exe                   5908 Services                   0     8 148 Ko
svchost.exe                   5960 Console                    1    22 196 Ko
IntelAudioService.exe         5968 Services                   0    22 156 Ko
OfficeClickToRun.exe          6012 Services                   0    36 780 Ko
svchost.exe                   6036 Services                   0    13 356 Ko
lghub_updater.exe             6084 Services                   0    16 404 Ko
nvcontainer.exe               6132 Services                   0    37 888 Ko
PnkBstrA.exe                  5764 Services                   0     6 864 Ko
RtkAudUService64.exe          6152 Services                   0    10 420 Ko
svchost.exe                   6160 Services                   0     6 728 Ko
RstMwService.exe              6192 Services                   0     7 120 Ko
ThunderboltService.exe        6200 Services                   0    17 608 Ko
vmware-authd.exe              6212 Services                   0    12 416 Ko
vmnetdhcp.exe                 6220 Services                   0     5 424 Ko
vmware-usbarbitrator64.ex     6252 Services                   0    10 756 Ko
svchost.exe                   6372 Services                   0     5 744 Ko
vmnat.exe                     6404 Services                   0     7 872 Ko
XtuService.exe                6440 Services                   0    68 228 Ko
MsMpEng.exe                   6468 Services                   0   231 416 Ko
svchost.exe                   6548 Services                   0    18 252 Ko
svchost.exe                   6576 Services                   0     8 964 Ko
jhi_service.exe               6596 Services                   0     5 252 Ko
svchost.exe                   6652 Services                   0     5 544 Ko
svchost.exe                   7092 Services                   0    12 120 Ko
RtkAudUService64.exe          7508 Console                    1    10 276 Ko
dllhost.exe                   7884 Console                    1     6 816 Ko
vmware-hostd.exe              8080 Services                   0    53 100 Ko
StartMenuExperienceHost.e     8304 Console                    1    80 988 Ko
rundll32.exe                  8480 Console                    1     7 220 Ko
RuntimeBroker.exe             8640 Console                    1    32 668 Ko
svchost.exe                   8768 Services                   0     7 324 Ko
svchost.exe                   8920 Services                   0     7 140 Ko
SearchUI.exe                  9148 Console                    1   195 896 Ko
SearchIndexer.exe             9208 Services                   0    50 868 Ko
RuntimeBroker.exe             9444 Console                    1    39 828 Ko
nvcontainer.exe               9688 Console                    1    44 928 Ko
YourPhone.exe                10136 Console                    1    59 228 Ko
svchost.exe                   2500 Services                   0     5 548 Ko
svchost.exe                    804 Services                   0    22 132 Ko
svchost.exe                   9784 Services                   0     9 928 Ko
LockApp.exe                   6708 Console                    1    52 540 Ko
SearchProtocolHost.exe       10252 Console                    1     7 836 Ko
svchost.exe                  10300 Services                   0    48 272 Ko
RuntimeBroker.exe            10372 Console                    1    38 812 Ko
RuntimeBroker.exe            10420 Console                    1    25 272 Ko
RuntimeBroker.exe            10856 Console                    1    20 632 Ko
svchost.exe                  10996 Services                   0    16 604 Ko
SearchFilterHost.exe         11132 Services                   0     8 460 Ko
NisSrv.exe                   11292 Services                   0    12 564 Ko
svchost.exe                  11512 Services                   0    10 336 Ko
SearchProtocolHost.exe       11708 Services                   0    11 896 Ko
SecurityHealthService.exe    11868 Services                   0    16 084 Ko
SecurityHealthHost.exe       11972 Console                    1    14 728 Ko
ShellExperienceHost.exe      12084 Console                    1    69 936 Ko
RuntimeBroker.exe            12204 Console                    1    28 960 Ko
svchost.exe                  11572 Services                   0     6 132 Ko
NVIDIA Web Helper.exe        11880 Console                    1    39 492 Ko
conhost.exe                   6396 Console                    1     9 628 Ko
svchost.exe                  12324 Services                   0     9 112 Ko
TrustedInstaller.exe         12468 Services                   0     6 920 Ko
TiWorker.exe                 12548 Services                   0    10 160 Ko
RuntimeBroker.exe            12812 Console                    1    20 644 Ko
RuntimeBroker.exe            12860 Console                    1    19 420 Ko
OmenCommandCenterBackgrou    12936 Console                    1   157 220 Ko
SynTPEnh.exe                 12944 Console                    1    20 592 Ko
HPSystemEventUtilityHost.    13232 Console                    1    76 480 Ko
backgroundTaskHost.exe       13076 Console                    1    31 576 Ko
RuntimeBroker.exe            13108 Console                    1    23 284 Ko
dllhost.exe                  12408 Services                   0    10 504 Ko
svchost.exe                  12420 Services                   0     6 344 Ko
svchost.exe                   2464 Services                   0     7 976 Ko
smartscreen.exe              13316 Console                    1    23 296 Ko
SecurityHealthSystray.exe    13372 Console                    1     8 776 Ko
RtkAudUService64.exe         13432 Console                    1    10 564 Ko
OneDrive.exe                 13520 Console                    1    71 364 Ko
HP.JumpStarts.exe            13752 Console                    1    40 444 Ko
SettingSyncHost.exe          13872 Console                    1    13 300 Ko
lghub.exe                    14288 Console                    1    58 136 Ko
lghub_agent.exe              10100 Console                    1    56 016 Ko
lghub.exe                    10968 Console                    1    40 908 Ko
lghub.exe                     9008 Console                    1    19 684 Ko
wallpaper32.exe              13668 Console                    1     9 504 Ko
ui32.exe                     10036 Console                    1    42 524 Ko
svchost.exe                  13704 Services                   0    18 936 Ko
svchost.exe                  14396 Services                   0     7 512 Ko
svchost.exe                  14484 Services                   0    19 284 Ko
IGCCTray.exe                 14528 Console                    1    72 888 Ko
unsecapp.exe                 14720 Console                    1     7 740 Ko
ui32.exe                     14772 Console                    1    76 000 Ko
ui32.exe                     14852 Console                    1    20 700 Ko
ui32.exe                     14884 Console                    1   118 952 Ko
IGCC.exe                     13856 Console                    1    50 068 Ko
firefox.exe                  15416 Console                    1   477 984 Ko
firefox.exe                  15908 Console                    1    49 408 Ko
Spotify.exe                  16268 Console                    1   107 488 Ko
firefox.exe                  15496 Console                    1   135 456 Ko
vmware-tray.exe              16076 Console                    1    10 832 Ko
Spotify.exe                  16204 Console                    1    16 580 Ko
Spotify.exe                  15484 Console                    1    71 404 Ko
Spotify.exe                  15872 Console                    1    32 492 Ko
Spotify.exe                  15388 Console                    1   125 848 Ko
firefox.exe                  16668 Console                    1   487 172 Ko
firefox.exe                  17296 Console                    1   227 008 Ko
firefox.exe                  17540 Console                    1    45 660 Ko
svchost.exe                  18036 Services                   0     8 832 Ko
svchost.exe                   1964 Services                   0     8 112 Ko
WindowsInternal.Composabl    18364 Console                    1    49 992 Ko
RuntimeBroker.exe            18288 Console                    1     6 728 Ko
svchost.exe                  18220 Services                   0    15 228 Ko
dllhost.exe                  10604 Console                    1    14 896 Ko
powershell.exe                2472 Console                    1    77 460 Ko
conhost.exe                  12388 Console                    1    15 540 Ko
HPAudioSwitch.exe             2944 Console                    1    49 984 Ko
backgroundTaskHost.exe        8844 Console                    1    28 276 Ko
backgroundTaskHost.exe        5072 Console                    1    42 624 Ko
backgroundTaskHost.exe       12384 Console                    1    46 092 Ko
backgroundTaskHost.exe        1596 Console                    1    40 604 Ko
BackgroundTransferHost.ex     1892 Console                    1    22 152 Ko
RuntimeBroker.exe             2660 Console                    1    23 620 Ko
RuntimeBroker.exe             3136 Console                    1    17 376 Ko
RuntimeBroker.exe            14552 Console                    1    28 924 Ko
RuntimeBroker.exe             3932 Console                    1    22 116 Ko
RuntimeBroker.exe             5320 Console                    1    29 628 Ko
svchost.exe                   6060 Console                    1    30 848 Ko
RuntimeBroker.exe             9700 Console                    1    18 068 Ko
tasklist.exe                 11484 Console                    1     8 412 Ko
```
* **Choisissez 5 services système et expliquer leur utilité**
* - **sv.chost.exe** = svchost.exe est un important processus Windows associé avec le service de systèmes Windows. Ce processus exécute des Bibliothèques de liens dynamiques (fichiers avec extension .dll). . Au démarrage, svchost.exe vérifie le registre pour des services chargeant un fichier .dll externe et les démarrent.
* - **Registry** = La base de registre de Windows renferme plusieurs paramètres importants du système d’exploitation. Elle contient par exemple des indications permettant de décider ce qui doit se passer si vous double-cliquez sur un certain type de fichier, la largeur de la barre de tâches... Lorsque vous installez un nouveau matériel, celui-ci ajoute des informations dans le registre, précisant entre autres les pilotes qui doivent être chargés à chaque démarrage du système. La carte graphique saura par exemple quelle résolution elle doit appliquer à l’écran, quelle profondeur de couleur elle doit choisir.

* - **wininit.exe**= Wininit.exe est responsable de l'exécution du processus d'initialisation Windows. Il s’agit d’un fichier Windows essentiel qui ne doit pas être supprimé. L’initialisation de Windows est un programme de lancement destiné à la plupart des applications système en arrière-plan qui sont exécutées régulièrement. Le bon fonctionnement du système d'exploitation de Windows est un processus critique de Windows

* - **Csrss.exe** : Csrss.exe est un fichier Windows essentiel et ne pose aucune menace pour votre PC. Le sous-système d'exécution client-serveur est un fichier Windows important qui doit rester actif à tout moment. Il est conçu pour créer et / ou supprimer des threads et implémenter certaines parties de l'environnement MS-DOS virtuel 16 bits. En outre, cet utilitaire est responsable de plusieurs fonctions critiques qui fonctionnent en arrière-plan. Par conséquent, sa désactivation peut entraîner quelques erreurs avec le système d'exploitation
* - **WUDFHost.exe** : est associé à l'hôte du cadre de pilotes Windows en mode utilisateur. Il s'agit d'un fichier Windows essentiel car il s’agit d’un composant important du système d’exploitation Windows, essentiel pour la stabilité globale du système. En outre, il gère les processus hôtes des pilotes en mode utilisateur et prend en charge la création de pilotes prenant en charge des services basés sur un protocole ou des périphériques basés sur un bus série tels que des appareils photo et des lecteurs de musique portables. 

# Network
```
Pour afficher la liste des cartes réseaux, il faut faire "ipconfig /all"
```
```
PS C:\Users\Max\b1_workstation> ipconfig /all

Configuration IP de Windows

   Nom de l’hôte . . . . . . . . . . : LAPTOP-6LNI85PH
   Suffixe DNS principal . . . . . . :
   Type de noeud. . . . . . . . . .  : Hybride
   Routage IP activé . . . . . . . . : Non
   Proxy WINS activé . . . . . . . . : Non
   Liste de recherche du suffixe DNS.: auvence.co

Carte Ethernet Ethernet :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :
   Description. . . . . . . . . . . . . . : Realtek Gaming GbE Family Controller
   Adresse physique . . . . . . . . . . . : BC-E9-2F-84-80-83
   DHCP activé. . . . . . . . . . . . . . : Oui
   Configuration automatique activée. . . : Oui

Carte réseau sans fil Connexion au réseau local* 1 :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :
   Description. . . . . . . . . . . . . . : Microsoft Wi-Fi Direct Virtual Adapter
   Adresse physique . . . . . . . . . . . : F8-AC-65-DA-00-C6
   DHCP activé. . . . . . . . . . . . . . : Oui
   Configuration automatique activée. . . : Oui

Carte réseau sans fil Connexion au réseau local* 2 :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :
   Description. . . . . . . . . . . . . . : Microsoft Wi-Fi Direct Virtual Adapter #2
   Adresse physique . . . . . . . . . . . : FA-AC-65-DA-00-C5
   DHCP activé. . . . . . . . . . . . . . : Oui
   Configuration automatique activée. . . : Oui

Carte réseau sans fil Wi-Fi :

   Suffixe DNS propre à la connexion. . . : auvence.co
   Description. . . . . . . . . . . . . . : Intel(R) Wi-Fi 6 AX201 160MHz
   Adresse physique . . . . . . . . . . . : F8-AC-65-DA-00-C5
   DHCP activé. . . . . . . . . . . . . . : Oui
   Configuration automatique activée. . . : Oui
   Adresse IPv6 de liaison locale. . . . .: fe80::c6b:1f4b:4d7e:893d%3(préféré)
   Adresse IPv4. . . . . . . . . . . . . .: 10.33.0.220(préféré)
   Masque de sous-réseau. . . . . . . . . : 255.255.252.0
   Bail obtenu. . . . . . . . . . . . . . : lundi 12 octobre 2020 13:52:11
   Bail expirant. . . . . . . . . . . . . : lundi 12 octobre 2020 18:52:10
   Passerelle par défaut. . . . . . . . . : 10.33.3.253
   Serveur DHCP . . . . . . . . . . . . . : 10.33.3.254
   IAID DHCPv6 . . . . . . . . . . . : 66628709
   DUID de client DHCPv6. . . . . . . . : 00-01-00-01-26-78-14-F9-BC-E9-2F-84-80-83
   Serveurs DNS. . .  . . . . . . . . . . : 10.33.10.146
                                       10.33.10.148
   NetBIOS sur Tcpip. . . . . . . . . . . : Activé

Carte Ethernet Connexion réseau Bluetooth :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :
   Description. . . . . . . . . . . . . . : Bluetooth Device (Personal Area Network)
   Adresse physique . . . . . . . . . . . : F8-AC-65-DA-00-C9
   DHCP activé. . . . . . . . . . . . . . : Oui
   Configuration automatique activée. . . : Oui
   ```
 * **Expliquer la fonction de chacune d'entre elles:**
 * **Carte ethernet ethernet** : Ethernet désigne un protocole de réseau local (LAN). Celui-ci se base sur des commutations de paquets et sur des câbles en paires torsadées pour permettre de relier plusieurs machines entre elles.
 * **Une carte réseau sans fil** :est un périphérique permettant de connecter son PC à un réseau sans fil. Pour pouvoir être connecté à un réseau sans fil, votre PC portable ou de bureau doit être équipé d’une carte réseau sans fil. La plupart des ordinateurs portables et des tablettes (et certains PC de bureau) sont fournis avec une carte réseau sans fil déjà installée.

* **Lister tous les ports TCP et UDP en utilisation**
```
Pour faire cela il faut faire un "netstat -a -b -o"
```
```
PS C:\windows\system32> netstat -a -b -o

Connexions actives

  Proto  Adresse locale         Adresse distante       État
  TCP    0.0.0.0:135            LAPTOP-6LNI85PH:0      LISTENING       1244
  RpcSs
 [svchost.exe]
  TCP    0.0.0.0:445            LAPTOP-6LNI85PH:0      LISTENING       4
 Impossible d’obtenir les informations de propriétaire
  TCP    0.0.0.0:808            LAPTOP-6LNI85PH:0      LISTENING       4812
 [OneApp.IGCC.WinService.exe]
  TCP    0.0.0.0:5040           LAPTOP-6LNI85PH:0      LISTENING       7920
  CDPSvc
 [svchost.exe]
  TCP    0.0.0.0:7680           LAPTOP-6LNI85PH:0      LISTENING       10804
 Impossible d’obtenir les informations de propriétaire
  TCP    0.0.0.0:9001           LAPTOP-6LNI85PH:0      LISTENING       4
 Impossible d’obtenir les informations de propriétaire
  TCP    0.0.0.0:27036          LAPTOP-6LNI85PH:0      LISTENING       20024
 [lsass.exe]
  TCP    0.0.0.0:49665          LAPTOP-6LNI85PH:0      LISTENING       880
 Impossible d’obtenir les informations de propriétaire
  TCP    0.0.0.0:49666          LAPTOP-6LNI85PH:0      LISTENING       1748
  Schedule
 [svchost.exe]
  TCP    0.0.0.0:49667          LAPTOP-6LNI85PH:0      LISTENING       584
  EventLog
 [svchost.exe]
  TCP    0.0.0.0:49668          LAPTOP-6LNI85PH:0      LISTENING       4364
 [spoolsv.exe]
  TCP    0.0.0.0:49670          LAPTOP-6LNI85PH:0      LISTENING       952
 Impossible d’obtenir les informations de propriétaire
  TCP    10.33.0.220:139        LAPTOP-6LNI85PH:0      LISTENING       4
 Impossible d’obtenir les informations de propriétaire
  TCP    10.33.0.220:57096      ec2-34-208-151-126:https  ESTABLISHED     916
 [firefox.exe]
  TCP    10.33.0.220:57170      40.67.254.36:https     ESTABLISHED     4900
  WpnService
 [svchost.exe]
  TCP    10.33.0.220:57185      a23-57-5-23:https      CLOSE_WAIT      22108
 [WinStore.App.exe]
  TCP    10.33.0.220:57186      a23-57-5-23:https      CLOSE_WAIT      22108
 [WinStore.App.exe]
  TCP    10.33.0.220:57187      a23-57-5-23:https      CLOSE_WAIT      22108
 [WinStore.App.exe]
  TCP    10.33.0.220:57189      a104-79-89-94:http     CLOSE_WAIT      22108
 [WinStore.App.exe]
  TCP    10.33.0.220:57190      a104-79-89-94:http     CLOSE_WAIT      22108
 [WinStore.App.exe]
  TCP    10.33.0.220:57191      a104-79-89-94:http     CLOSE_WAIT      22108
 [WinStore.App.exe]
  TCP    10.33.0.220:57192      a104-79-89-94:http     CLOSE_WAIT      22108
 [WinStore.App.exe]
  TCP    10.33.0.220:57193      a104-79-89-94:http     CLOSE_WAIT      22108
 [WinStore.App.exe]
  TCP    10.33.0.220:57223      a173-222-96-26:https   CLOSE_WAIT      22108
 [WinStore.App.exe]
  TCP    10.33.0.220:57236      93.184.220.29:http     CLOSE_WAIT      2868
 [YourPhone.exe]
  TCP    10.33.0.220:58160      104.244.42.2:https     ESTABLISHED     916
 [firefox.exe]
  TCP    10.33.0.220:58978      47:https               ESTABLISHED     2928
 [Discord.exe]
  TCP    10.33.0.220:59134      ec2-18-179-225-220:https  ESTABLISHED     916
 [firefox.exe]
  TCP    10.33.0.220:59162      162.159.130.234:https  ESTABLISHED     2928
 [Discord.exe]
  TCP    10.33.0.220:59210      162.159.135.233:https  ESTABLISHED     2928
 [Discord.exe]
  TCP    10.33.0.220:59211      162.159.129.232:https  ESTABLISHED     2928
 [Discord.exe]
  TCP    10.33.0.220:59212      162.159.129.232:https  ESTABLISHED     2928
 [Discord.exe]
  TCP    10.33.0.220:59213      162.159.133.232:https  ESTABLISHED     2928
 [Discord.exe]
  TCP    10.33.0.220:59214      1:https                ESTABLISHED     2928
 [Discord.exe]
  TCP    10.33.0.220:59215      a-0001:https           TIME_WAIT       0
  TCP    10.33.0.220:59216      13.107.18.11:https     TIME_WAIT       0
  TCP    10.33.0.220:59217      bingforbusiness:https  TIME_WAIT       0
  TCP    10.33.0.220:59218      13.107.246.254:https   ESTABLISHED     17392
 [SearchUI.exe]
  TCP    10.33.0.220:59219      13.107.42.254:https    ESTABLISHED     17392
 [SearchUI.exe]
PS C:\windows\system32>
```
```
Pour afficher les UDP , j'ai du utiliser la commande "netstat -p udp -anb"
```
```
PS C:\windows\system32> netstat -p udp -anb

Connexions actives

  Proto  Adresse locale         Adresse distante       État
  UDP    0.0.0.0:500            *:*
  IKEEXT
 [svchost.exe]
  UDP    0.0.0.0:4500           *:*
  IKEEXT
 [svchost.exe]
  UDP    0.0.0.0:5353           *:*
  Dnscache
 [svchost.exe]
  UDP    0.0.0.0:5353           *:*
 [svchost.exe]
  UDP    0.0.0.0:50000          *:*
 [nvcontainer.exe]
  UDP    0.0.0.0:54915          *:*
 [lghub_agent.exe]
  UDP    0.0.0.0:57621          *:*
 Impossible d’obtenir les informations de propriétaire
  UDP    10.33.16.104:1900      *:*
  SSDPSRV
 [svchost.exe]
  UDP    10.33.16.104:5353      *:*
 [nvcontainer.exe]
  UDP    10.33.16.104:64672     *:*
  SSDPSRV
 [svchost.exe]
  UDP    127.0.0.1:1900         *:*
  SSDPSRV
 [svchost.exe]
  UDP    127.0.0.1:10010        *:*
 [NVIDIA Web Helper.exe]
  UDP    127.0.0.1:44301        *:*
 [PnkBstrA.exe]
  UDP    127.0.0.1:60910        *:*
  iphlpsvc
 [svchost.exe]
  UDP    127.0.0.1:62081        *:*
 [nvcontainer.exe]
  UDP    127.0.0.1:64673        *:*
  SSDPSRV
 [svchost.exe]
  UDP    192.168.11.1:137       *:*
 Impossible d’obtenir les informations de propriétaire
  UDP    192.168.11.1:138       *:*
 Impossible d’obtenir les informations de propriétaire
  UDP    192.168.11.1:1900      *:*
  SSDPSRV
 [svchost.exe]
  UDP    192.168.11.1:5353      *:*
 [nvcontainer.exe]
  UDP    192.168.11.1:64670     *:*
  SSDPSRV
 [svchost.exe]
  UDP    192.168.188.1:137      *:*
 Impossible d’obtenir les informations de propriétaire
  UDP    192.168.188.1:138      *:*
 Impossible d’obtenir les informations de propriétaire
  UDP    192.168.188.1:1900     *:*
  SSDPSRV
 [svchost.exe]
  UDP    192.168.188.1:5353     *:*
 [nvcontainer.exe]
  UDP    192.168.188.1:64671    *:*
  SSDPSRV
 [svchost.exe]
 ```
*  **Déterminer quel programme tourne derrière chacun des ports**
* - Comme on peut le voir au dessus chaque programme utilise un port différent, de plus chaque programme est ecrit en dessous 
*  **Expliquer la fonction de chacun de ces programmes**
*  - [svchost.exe] :  svchost.exe est un processus générique (generic host process ) pour les services exécutés à partir de bibliothèques dynamiques.
*  - [OneApp.IGCC.WinService.exe] : Je n'ai pas  trouvé sa fonction 
*  - [lsass.exe] : lsass.exe (Local Security Authority Subsystem) est un exécutable qui assure l'identification des utilisateurs (utilisateurs du domaine ou utilisateurs locaux)
*  - [WinStore.App.exe] :  est un centre de distribution numérique pour les applications de la plate-forme Windows (UWP). Le Microsoft Store est un point de distribution unifié pour les applications, la vidéo numérique, la musique numérique et les livres électroniques.
*  - [YourPhone.exe]: Permet aux utilisateurs de Windows 10 de synchroniser leurs telephone d'Android à leur PC. Mais l'application est toujours en developpement car elle a certain problème
*  - [firefox.exe]: Le fichier authentique firefox.exe est un composant logiciel de Mozilla Firefox de Mozilla et qui permet de naviguer sur internet gratuitement et en open-source
*  - [Discord.exe] : est un programme VoIP multiplate-forme gratuit et populaire auprès des communautés de jeux en ligne.
*  - [SearchUI.exe] : active l'interface utilisateur de recherche de l'assistant d Le processus appelé NVIDIA Container appartient au logiciel NVIDIA Container ou NVIDIA LocalSystem Container ou aux pilotes NVIDIA ou au panneau de contrôle d'affichage NVIDIA de NVIDIA 
*  - [lghub_agent.exe] : Le logiciel utilise des ports pour se connecter à ou depuis un réseau local ou Internet. Lghub.exe est capable d'enregistrer les entrées du clavier et de la souris, de surveiller les applications et de manipuler d'autres programmes
*  - [PnkBstrA.exe] : est un utilitaire de détection de triche pour les jeux vidéo destiné à empêcher la triche dans les jeux multijoueurs en ligne. PnkBstrA.exe est un composant principal du client PunkBuster

## Scripting

* **Script 1**
```
PS C:\Users\Max\b1_workstation> .\script.ps1
LAPTOP-6LNI85PH


Caption                 : Microsoft Windows 10 Famille
Version                 : 10.0.18363
ServicePackMajorVersion : 0
OSArchitecture          : 64 bits
CSName                  : LAPTOP-6LNI85PH
WindowsDirectory        : C:\windows
NumberOfUsers           : 2
BootDevice              : \Device\HarddiskVolume1


Envoi d’une requête 'Ping'  8.8.8.8 avec 32 octets de données :
Réponse de 8.8.8.8 : octets=32 temps=14 ms TTL=115
Réponse de 8.8.8.8 : octets=32 temps=15 ms TTL=115
Réponse de 8.8.8.8 : octets=32 temps=12 ms TTL=115
Réponse de 8.8.8.8 : octets=32 temps=13 ms TTL=115

Statistiques Ping pour 8.8.8.8:
    Paquets : envoyés = 4, reçus = 4, perdus = 0 (perte 0%),
Durée approximative des boucles en millisecondes :
    Minimum = 12ms, Maximum = 15ms, Moyenne = 13ms

IPv4 : 192.168.61.1

IPv4 : 192.168.32.1

IPv4 : 10.10.10.1

IPv4 : 192.168.1.15

LastBootUpTime : 22/10/2020 13:51:24

RAM
Free : 8817460 octets
Pourcentage 53,08 %

Administrateur
DefaultAccount
Invité
Max
WDAGUtilityAccount

187777941504
187777941504


PS C:\Users\Max\b1_workstation>
```
## Script 2
```
PS C:\Users\Max\b1_workstation> .\script2.ps1
shutdown -h -t 60 
Mise en veille dans 1 minutes
#shutdown -s -t 300
Arret du systeme dans 4 minutes
```

## III. Gestion de softs
- **Expliquer l'intérêt de l'utilisation d'un gestionnaire de paquets**
*  **Par rapport au téléchargement en direct sur internet** 
* - Penser à l'identité des gens impliqués dans un téléchargement (vous, l'éditeur logiciel, etc.)
* - Penser à la sécurité globale impliquée lors d'un téléchargement
*  Un gestionnaire de paquets permet de facilite l'installation de nouveaux programmes, leur mise à jour ou leur suppression. Il permet donc d'éviter la corruption ou la perte de fichiers lors d'un téléchargement.

- **Utiliser un gestionnaire de paquet propres à votre OS pour**
 lister tous les paquets déjà installés
```
PS C:\Users\Max> choco list --localonly
Chocolatey v0.10.15
chocolatey 0.10.15
1 packages installed.
```
* **Déterminer la provenance des paquets (= quel serveur nous délivre les paquets lorsqu'on installe quelque chose)**
```
PS C:\windows\system32> choco install googlechrome
Chocolatey v0.10.15
Installing the following packages:
googlechrome
By installing you accept licenses for the packages.

chocolatey-core.extension v1.3.5.1 [Approved]
chocolatey-core.extension package files install completed. Performing other installation steps.
 Installed/updated chocolatey-core extensions.
 The install of chocolatey-core.extension was successful.
  Software installed to 'C:\ProgramData\chocolatey\extensions\chocolatey-core'

GoogleChrome v86.0.4240.111 [Approved]
googlechrome package files install completed. Performing other installation steps.
The package GoogleChrome wants to run 'chocolateyInstall.ps1'.
Note: If you don't run this script, the installation will fail.
Note: To confirm automatically next time, use '-y' or consider:
choco feature enable -n allowGlobalConfirmation
Do you want to run the script?([Y]es/[A]ll - yes to all/[N]o/[P]rint): y

Downloading googlechrome 64 bit
  from 'https://dl.google.com/tag/s/dl/chrome/install/googlechromestandaloneenterprise64.msi'
Progress: 100% - Completed download of C:\Users\Max\AppData\Local\Temp\chocolatey\GoogleChrome\86.0.4240.111\googlechromestandaloneenterprise64.msi (66.9 MB).
Download of googlechromestandaloneenterprise64.msi (66.9 MB) completed.
Hashes match.
Installing googlechrome...
googlechrome has been installed.
  googlechrome may be able to be automatically uninstalled.
 The install of googlechrome was successful.
  Software installed as 'MSI', install location is likely default.

Chocolatey installed 2/2 packages.
 See the log for details (C:\ProgramData\chocolatey\logs\chocolatey.log).
PS C:\windows\system32> 
```
* - Grace à cette installe, on peut voir que pour google, il va le chercher directement sur le site officel https://dl.google.com/tag/s/dl/chrome/install/googlechromestandaloneenterprise64.msi .Vu que choco fait confiance  à google alors google fait confiance à d'autres partenaires et il fait la liaison pour avoir le .exe officel. 

# Partage de fichier
Sur ma machine fixe, on peut voir le partage de fichier .
```
*PS C:\> New-SmbShare -Name "VM" -Path "C:\VM" -FullAccess "Max"

Name ScopeName Path  Description
---- --------- ----  -----------
VM            C:\VM


PS C:\windows\system32> Get-SMBShare

Name   ScopeName Path       Description
----   --------- ----       -----------
ADMIN$ *         C:\windows Administration à distance
C$     *         C:\        Partage par défaut
IPC$   *                    IPC distant
VM     *         C:\VM

PS C:\> ssh root@192.168.120.50

```
Ainsi que sur mon serveur ssh, on peut voir que j'ai accès à mon dossier partagé
```
[root@localhost ~]# mount -t cifs -o username=Max,password=??????//192.168.120.1/VM C:\VM
[root@localhost ~]# ls
anaconda-ks.cfg  C:VM
[root@localhost ~]# cd C:VM
[root@localhost C:VM]#       
```
PS: Pour ne pas afficher mon mot de passe, j'ai mis des "????"