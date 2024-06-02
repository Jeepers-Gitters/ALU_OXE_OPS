# OPS swk file reader
# for SW key description see TC 464 (>=R5.0), TC 480 (R5.1), TC 531 (R5.1.1), TC 548 (R5.1.2), TC 593 (R6.0), TC 619 (R6.0.1), TC 652 (R6.1), TC 685 (R6.1.1), TC 711 (R6.2),838 (R7.1,), TC 777ed04 (R8.0), TC 777ed05 (R9.0), TC 1645 (R10.1)
# and file /DHS3bin/oneshot/mtcl/Packages.dct
$SWKVersionLength = 8
#$SWKArray = ((1, "GroupTelephony"), (2, "Phonebook users"), (4, "Hotel guest sets"), (5, "Multilangual voice prompts"), (6, "Hotel AHL on V24"), (9, "PRA"), (10, "Voice Guide"), (11, "AutomatedAttendant"), (12, "DISA"), (13, "ECSEngine"), (14, "Integrated metering report"), (15, "ExternalAccounting"), (16, "V24 for Metering on fly (not used"), (19, "Corporate netw. (ABC/ABC-VPN/ISVPN"), (20, "Automated attendant"), (21, "Nb of VPS ports"), (25, "CLI (4600"), (29, "DECT/PWT Engine"), (30, "4736ACD"), (31, "AMIS"), (38, "Infocenter link"), (39, "Performance"), (40, "Real Time Incidents"), (41, "DECT register"), (42, "Accounting users"), (44, "4059 SBC"), (45, "4059 BLF"), (46, "Fax server ABC-A link"), (47, "Alarms"), (49, "Directory"), (50, "Configuration"), (51, "Real Time Metering on V24"), (52 ,"4635 Basic Package"), (56, "4635 Networking OctelNet"), (57, "4635 Fax manager"), (58, "4635 Call manager"), (59, "4635 Hotel manager"), (60, "4635 Nb of port"), (61, "4635 Nb of hours"), (62, "4635 Nb of languages"), (63, "4635 Attendant manager"), (65, "4635 Recording manager"), (66, "4635 Networking AMIS"), (75, "Networking hospital"), (76, "CCD Agents"), (77, "CCS mono-site"), (78, "CRI call record interface"), (79, "ISVPN"), (80, "VPN"), (81, "Meet me conf. between 29 parties"), (82, "Nb of DECT terminals"), (83, "Flow Metering on Ethernet"), (84, "4635 users"), (86, "Automatic directory pop-up"), (87, "BetaTest"), (89, "Notification server"), (90, "Roaming DECT/PWT"), (91, "Voice guide record from Reflexes"), (94, "WMI Workforce manager interface"), (96, "HotelSuite"), (97, "VPS users"), (98, "Accounting for local calls"), (99, "Accounting for ABC calls"), (100, "CSTA profile"), (101, "CSTA monitoring requests"), (102, "CSS multi-site"), (103, "Real Time Interface"), (105, "Compressed calls"), (106, "Transfix"), (107, "4635 Visual messenger"), (109, "4635 IP Octel Networking"), (110, "4635 Global message redundancy"), (111, "Ubiquity"), (112, "CCSLite"), (113, "CSTA pilots monitoring"), (114, "TSAPI server"), (115, "CCA softphone"), (116, "ECC My Softphone (4980 Std"), (117, "ECC 4980 Option (4980 Adv"), (119, "4980 nomadic logged"), (121, "CLIP on VPS"), (122, "ACAPI via CMIP"), (123, "CSTA IVR ports monitored"), (125, "CCweb Agents"), (126, "Hotel AHL link"), (127, "Encryption DECT/PWT users"), (128, "4615Port"), (129, "ECC My Softphone (4980 Grp"), (130, "CSTA voice recording type"), (131, "Remote LIO"), (132, "IP-Trunk"), (133, "Mastered conference"), (134, "Multi-tenant"), (135, "G729A Server"), (136, "Priority"), (137, "Call restriction"), (138, "IP Clients"), (143, "TAPI premium server"), (145, "CSTA Recording B channel"), (146, "PWT mobility (UTAM"), (147, "IPDevice"), (148, "IP Call Server"), (149, "4980Dispatcher"), (151, "4635 VPIM"), (152, "Ith Radio"), (153, "SNMP Trap"), (154, "Additional S0 features"), (155, "Additional safety features"), (156, "Ith"), (157, "CCA nomadic"), (158, "CSTA By-pass"), (160, "CCemail Agents"), (161, "CCoutbound Agents"), (162, "CCoutpredial Agents"), (164, "CSTA Record networked"), (165, "OmniPCX Enterprise release"), (166, "4980 multi device"), (167, "ACR data base read"), (168, "Nb of HPOV node"), (169, "Voice detection channels"), (173, "Advanced Reflexes users"), (174, "Analog users"), (175, "Mobile users"), (176, "Advanced IP users"), (177, "SIP users"), (178, "4645 Voice mail engine"), (179, "4645 users"), (181, "OmniPCX Enterprise"), (182, "4645 networking"), (183, "4645 additional language"), (184, "Integrated Gatekeeper"), (185, "SIP Gateway"), (186, "E-CS redundancy"), (187, "H323 (G711) network link"), (188, "SIP network links"), (189, "CCTI agents"), (190, "RSI call center agents"), (191, "Campus DECT"), (192, "DREXProtocol"), (193, "Embedded voice guides"), (194, "EVA Portal users"), (195, "CCD profile"), (196, "RSI Business agents"), (197, "G729A Client"), (198, "G723.1 Client"), (199, "Version 4400 R5.0 Ux"), (200, "4400 Mobiles migration"), (201, "4400 Reflexes migration"), (202, "4400 Analog migration "), (203, "Upgrade CCSLight"), (213, "eCS engine physical users"), (300, "SWK file edition"), (301, "HardKey 1"), (302,"HardKey 2"), (308, "Remote extension"), (309, "XML telephony"), (310, "CLIP Z"), (311, "ACR Networking"), (312, "Scripting agents"), (313, "eCCGateway"), (314, "4635MyMessagingUsers"), (316, "Standard Reflexes users"), (317, "Standard IP users"), (318, "MaxConnectionPRS"), (319,"Easy contact CCD"), (321, "Mobile IP Touch"), (322, "CSTA over 9999"), (323, "Executive UA users"), (324, "Executive IP users"), (325, "IPTouchSecurity"), (326, "IPTouchSecurityUsers"), (327, "SecurityModule"), (328, "IPSoftphone"), (329, "IPSoftphoneCCD"), (330, "AdvancedMIPTUsers"), (331,"MyPhone IP Desktop"), (332, "PCS max. number"), (333, "CPU-id 25 characters"), (334, "MaxIPRecording"), (335, "Greeting Assistant"), (336, "IMEStations"), (337, "SIPExtVoiceMails"), (338, "Migration ELA users to eZ32"), (339, "Migration ELN users to eUA32"), (340,"Encryption server IP users"), (341, "BiCS Release"), (342, "ABC-IP Access Number"), (343, "MgSec Max Number"), (344, "IP for free"), (345, "SIP extension users"), (346, "Max agents voice migration"), (347, "Max agents email migration"), (348, "Soft MSM lock"), (349, "Fusion IP centralisation"), (358, "Max number of SIP TLS sets"), (359, "Max com simultaneous SIP TLS"), (363, "NOESIP TLS users"), (364, "Max Attendants 4059EE"), (371, "IPDect Users"), (372, "OpenTouch Business Edition"), (384, "OXE Media Servers"), (385, "VoIP channels on OMS"), (386, "UC as a Service"), (396, "IPV6"), (406, "OT gateways allowed"), (424, "Native Encryption Users"), (428, "Sip Trunk Recording"), (429, "Correlator Data"), (430, "SipSoftPhone"), (431, "Opex Mode"), (464, "SOSM feature"), (467, "ARS"), (468, "ProductType"), (469, "G723.1 Server"), (1000, "SupervisableSets"), (1001, "VoiceMailBoxes"), (1002, "FaxMailBoxes") )
$SWKArray =[ordered]@{ 1 = "GroupTelephony" ;  2 = "Phonebook users" ;  4 = "Hotel guest sets" ;  5 = "Multilangual voice prompts" ;  6 = "Hotel AHL on V24" ;  9 = "PRA" ;  10 = "Voice Guide" ;  11 = "AutomatedAttendant" ;  12 = "DISA" ;  13 = "ECSEngine" ;  14 = "Integrated metering report" ;  15 = "ExternalAccounting" ;  16 = "V24 for Metering on fly  not used" ;  19 = "Corporate netw.ABC/ABC-VPN/ISVPN" ;  20 = "Automated attendant" ;  21 = "Nb of VPS ports" ;  25 = "CLI  4600" ;  29 = "DECT/PWT Engine" ;  30 = "4736ACD" ;  31 = "AMIS" ;  38 = "Infocenter link" ;  39 = "Performance" ;  40 = "Real Time Incidents" ;  41 = "DECT register" ;  42 = "Accounting users" ;  44 = "4059 SBC" ;  45 = "4059 BLF" ;  46 = "Fax server ABC-A link" ;  47 = "Alarms" ;  49 = "Directory" ;  50 = "Configuration" ;  51 = "Real Time Metering on V24" ;  52 = "4635 Basic Package" ;  56 = "4635 Networking OctelNet" ;  57 = "4635 Fax manager" ;  58 = "4635 Call manager" ;  59 = "4635 Hotel manager" ;  60 = "4635 Nb of port" ;  61 = "4635 Nb of hours" ;  62 = "4635 Nb of languages" ;  63 = "4635 Attendant manager" ;  65 = "4635 Recording manager" ;  66 = "4635 Networking AMIS" ;  75 = "Networking hospital" ;  76 = "CCD Agents" ;  77 = "CCS mono-site" ;  78 = "CRI call record interface" ;  79 = "ISVPN" ;  80 = "VPN" ;  81 = "Meet me conf. between 29 parties" ;  82 = "Nb of DECT terminals" ;  83 = "Flow Metering on Ethernet" ;  84 = "4635 users" ;  86 = "Automatic directory pop-up" ;  87 = "BetaTest" ;  89 = "Notification server" ;  90 = "Roaming DECT/PWT" ;  91 = "Voice guide record from Reflexes" ;  94 = "WMI Workforce manager interface" ;  96 = "HotelSuite" ;  97 = "VPS users" ;  98 = "Accounting for local calls" ;  99 = "Accounting for ABC calls" ;  100 = "CSTA profile" ;  101 = "CSTA monitoring requests" ;  102 = "CSS multi-site" ;  103 = "Real Time Interface" ;  105 = "Compressed calls" ;  106 = "Transfix" ;  107 = "4635 Visual messenger" ;  109 = "4635 IP Octel Networking" ;  110 = "4635 Global message redundancy" ;  111 = "Ubiquity" ;  112 = "CCSLite" ;  113 = "CSTA pilots monitoring" ;  114 = "TSAPI server" ;  115 = "CCA softphone" ;  116 = "ECC My Softphone  4980 Std" ;  117 = "ECC 4980 Option  4980 Adv" ;  119 = "4980 nomadic logged" ;  121 = "CLIP on VPS" ;  122 = "ACAPI via CMIP" ;  123 = "CSTA IVR ports monitored" ;  125 = "CCweb Agents" ;  126 = "Hotel AHL link" ;  127 = "Encryption DECT/PWT users" ;  128 = "4615Port" ;  129 = "ECC My Softphone  4980 Grp" ;  130 = "CSTA voice recording type" ;  131 = "Remote LIO" ;  132 = "IP-Trunk" ;  133 = "Mastered conference" ;  134 = "Multi-tenant" ;  135 = "G729A Server" ;  136 = "Priority" ;  137 = "Call restriction" ;  138 = "IP Clients" ;  143 = "TAPI premium server" ;  145 = "CSTA Recording B channel" ;  146 = "PWT mobility  UTAM" ;  147 = "IPDevice" ;  148 = "IP Call Server" ;  149 = "4980Dispatcher" ;  151 = "4635 VPIM" ;  152 = "Ith Radio" ;  153 = "SNMP Trap" ;  154 = "Additional S0 features" ;  155 = "Additional safety features" ;  156 = "Ith" ;  157 = "CCA nomadic" ;  158 = "CSTA By-pass" ;  160 = "CCemail Agents" ;  161 = "CCoutbound Agents" ;  162 = "CCoutpredial Agents" ;  164 = "CSTA Record networked" ;  165 = "OmniPCX Enterprise release" ;  166 = "4980 multi device" ;  167 = "ACR data base read" ;  168 = "Nb of HPOV node" ;  169 = "Voice detection channels" ;  173 = "Advanced Reflexes users" ;  174 = "Analog users" ;  175 = "Mobile users" ;  176 = "Advanced IP users" ;  177 = "SIP users" ;  178 = "4645 Voice mail engine" ;  179 = "4645 users" ;  181 = "OmniPCX Enterprise" ;  182 = "4645 networking" ;  183 = "4645 additional language" ;  184 = "Integrated Gatekeeper" ;  185 = "SIP Gateway" ;  186 = "E-CS redundancy" ;  187 = "H323  G711) network link" ;  188 = "SIP network links" ;  189 = "CCTI agents" ;  190 = "RSI call center agents" ;  191 = "Campus DECT" ;  192 = "DREXProtocol" ;  193 = "Embedded voice guides" ;  194 = "EVA Portal users" ;  195 = "CCD profile" ;  196 = "RSI Business agents" ;  197 = "G729A Client" ;  198 = "G723.1 Client" ;  199 = "Version 4400 R5.0 Ux" ;  200 = "4400 Mobiles migration" ;  201 = "4400 Reflexes migration" ;  202 = "4400 Analog migration " ;  203 = "Upgrade CCSLight" ;  213 = "eCS engine physical users" ;  300 = "SWK file edition" ;  301 = "HardKey 1" ;  302 = "HardKey 2" ;  308 = "Remote extension" ;  309 = "XML telephony" ;  310 = "CLIP Z" ;  311 = "ACR Networking" ;  312 = "Scripting agents" ;  313 = "eCCGateway" ;  314 = "4635MyMessagingUsers" ;  316 = "Standard Reflexes users" ;  317 = "Standard IP users" ;  318 = "MaxConnectionPRS" ;  319 = "Easy contact CCD" ;  321 = "Mobile IP Touch" ;  322 = "CSTA over 9999" ;  323 = "Executive UA users" ;  324 = "Executive IP users" ;  325 = "IPTouchSecurity" ;  326 = "IPTouchSecurityUsers" ;  327 = "SecurityModule" ;  328 = "IPSoftphone" ;  329 = "IPSoftphoneCCD" ;  330 = "AdvancedMIPTUsers" ;  331 = "MyPhone IP Desktop" ;  332 = "PCS max. number" ;  333 = "CPU-id 25 characters" ;  334 = "MaxIPRecording" ;  335 = "Greeting Assistant" ;  336 = "IMEStations" ;  337 = "SIPExtVoiceMails" ;  338 = "Migration ELA users to eZ32" ;  339 = "Migration ELN users to eUA32" ;  340 = "Encryption server IP users" ;  341 = "BiCS Release" ;  342 = "ABC-IP Access Number" ;  343 = "MgSec Max Number" ;  344 = "IP for free" ;  345 = "SIP extension users" ;  346 = "Max agents voice migration" ;  347 = "Max agents email migration" ;  348 = "Soft MSM lock" ;  349 = "Fusion IP centralisation" ;  358 = "Max number of SIP TLS sets" ;  359 = "Max com simultaneous SIP TLS" ;  363 = "NOESIP TLS users" ;  364 = "Max Attendants 4059EE" ;  371 = "IPDect Users" ;  372 = "OpenTouch Business Edition" ;  384 = "OXE Media Servers" ;  385 = "VoIP channels on OMS" ;  386 = "UC as a Service" ;  396 = "IPV6" ;  406 = "OT gateways allowed" ;  424 = "Native Encryption Users" ;  428 = "Sip Trunk Recording" ;  429 = "Correlator Data" ;  430 = "SipSoftPhone" ;  431 = "Opex Mode" ;  464 = "SOSM feature" ;  467 = "ARS" ;  468 = "ProductType" ;  469 = "G723.1 Server" ;  1000 = "SupervisableSets" ;  1001 = "VoiceMailBoxes" ;  1002 = "FaxMailBoxes" }
$SWKeyLength = 20
$FieldLength = 4
$FieldLengthOffset = $FieldLength - 1
$FilePosition = 0
#$KeysStart = "00000000101"
$OldOPSVersionFieldLength = 5
$SWKeysAreaMarker = "28a1"
# Old marker
# $SWKeysAreaMarker = "21dd"
$KeyOffsetR7 = 3
$KeyOffsetR8 = 5
#
# Header for swk file
# 
$SWKHeader =[ordered]@{}
#
# Array for decoded SW keys
#
$SWKdecoded =[ordered]@{}
#
# Array for CPU IDs
#
$CPUIds = @()
#
# Translation for SW versions for Software Key 165
#
$SWVersionsArray = @{ 30 = "5.0Lx"; 31 = "5.1"; 32 = "6.0"; 33 = "6.1"; 34 = "6.2"; 35 = "7.0"; 36 = "7.1"; 37 = "8.0"; 38 = "9.0"; 39 = "9.1"; 40 = "10.0"; 41 = "10.1"; 42 = "11.0"; 43 = "11.1"; 44 = "11.2"; 45 = "12.0"; 46 = "12.1"; 47 = "12.2"; 48 = "12.3"; 49 = "12.4"; 50 = "R100"; 51 = "R100.1" }
#
# Debugging Preferencies
#
$DebugPreference = "SilentlyContinue"
#$DebugPreference = "Continue"
$ErrorActionPreference = "Stop"  
#
# Return Codes
#
$ErrorNotFileChosen = 1
$ErrorNotSwkFile = 2

# 
# Main
#
Push-Location
Add-Type -AssemblyName System.Windows.Forms
# [Enum]::GetNames('System.Environment+SpecialFolder')
$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{ InitialDirectory = [Environment]::GetFolderPath('DesktopDirectory') }
$FileBrowser.Filter = "swk files (*.swk)|*.swk|All Files (*.*)|*.*"
#$FileBrowser.Filter = "Text files (*.txt)|*.txt|All files (*.*)|*.*"
$null = $FileBrowser.ShowDialog()
$SWKFile = $FileBrowser.FileName
#$SWKFile = "C:\Utils\OL00001A.swk"
if ( -not $SWKFile ) {
  Write-Host "No files chosen. Exiting."
  exit $ErrorNotFileChosen
  }
$OPSFilepath = Split-Path -Parent $SWKFile
Write-Host "Loading data from $SWKFile"
if ($PSVersionTable.PSVersion.Major -lt 6) {
  $SWKBuffer = Get-Content -Path $SWKFile -Encoding Byte
  }
else {
  $SWKBuffer = Get-Content -Path $SWKFile -AsByteStream
  }
Write-Host "Loaded "$SWKBuffer.Length "bytes"
if ( $SWKBuffer.Length -lt 10000 ) {
  Write-Host "Looks like Release <= R7.1"
  $KeyOffset = $KeyOffsetR7
  }
  else {
    $KeyOffset = $KeyOffsetR8
    }
#
# Process DLL version string
# At the moment its first four bytes of any swk file.
# It contains four ASCII encoded digits. 
#
$SWKDll = [System.Text.Encoding]::ASCII.GetString( $SWKBuffer[$FilePosition..($SWKVersionLength-1)] )
# Simple check whether it is a swk file
if ( $SWKDll -match "^\d+$" ) {
  $SWKDll = [System.Text.Encoding]::ASCII.GetString( $SWKBuffer[$FilePosition..($SWKVersionLength-1)] ) -split "(.{2})" -ne "" | ForEach-Object {[char][byte]"0x$_"}
  $SWKDll = $SWKDll -join ""
  $FilePosition = $FilePosition + $SWKVersionLength
  }
  else {
    Write-Host "Not swk file. Exiting"
    exit $ErrorNotSwkFile
    }
#
# Process control sum code
# There is no sense to get length of swkey as it is always 20 (0x18) so just move pointer 4 characters ahead
# 
$FilePosition = $FilePosition + $FieldLength
$SWKCode = [System.Text.Encoding]::ASCII.GetString( $SWKBuffer[($FilePosition)..($FilePosition + ($SWKeyLength -1))] )
$FilePosition = $FilePosition + $SWKeyLength
#
# Here starts the descriptor
#
$AreaStart = $FilePosition
$DataLength = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
#
# Descriptor length
$DataLength = [int]$DataLength
$FilePosition = $FilePosition + $FieldLength
#
# Number of elements in descriptor
$SWKareas = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[($FilePosition)..($FilePosition + $FieldLengthOffset)])
$SWKareas = [int]$SWKareas
Write-Debug -message "Area starts at  $AreaStart  and descriptor length is  $DataLength"
Write-Debug -message "Number of areas: $SWKareas "
$FilePosition = $FilePosition + $FieldLength
#
# Length of 1st element in descriptor
# Write-Debug -message "0 On $FilePosition"
$ElementNumber = 1
$ElementLength = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[($FilePosition)..($FilePosition + $FieldLengthOffset)])
$ElementLength = [int]$ElementLength
$ElementContent = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $ElementLength)])
$FilePosition = $AreaStart + $ElementLength
Write-Debug -message "1 On $FilePosition"
#
# Process creation date
#
$DateCode = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$DateCode = [int]$DateCode - $FieldLength
$FilePosition = $FilePosition + $FieldLength
$DateContents = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($DateCode - 1))])
Write-Debug -message "Creation date/time length/content: $DateCode $DateContents"
Write-Debug -message "2 On $FilePosition"
#
# Process 4760/8770 Handle
#
$FilePosition = $FilePosition + $DateCode 
$4760HandleCode = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$4760HandleCode = [int]$4760HandleCode - $FieldLength
$FilePosition = $FilePosition + $FieldLength
$4760HandleContents = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($4760HandleCode - 1))])
Write-Debug -message "4760/8770 Handle length/content: $4760HandleCode $4760HandleContents"
Write-Debug -message "3 On $FilePosition"
#
# Process CPU Id and CloudConnect tokens
#
$FilePosition = $FilePosition + $4760HandleCode 
$CPUIdsCode = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$CPUIdsCode = [int]$CPUIdsCode - $FieldLength
$FilePosition = $FilePosition + $FieldLength
$CPUIdsContents  = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($CPUIdsCode - 1))])
Write-Debug -message "CPU Ids length/content: $CPUIdsCode  $CPUIdsContents"
#
# Get a number of CPU IDs
#
$CPUIdsNumberofElements = "0x" + [System.Text.Encoding]::ASCII.GetString($CPUIdsContents[0..$FieldLengthOffset])
$CPUIdsNumberofElements = [int]$CPUIdsNumberofElements
Write-Debug -message "CPU Ids number of elements: $CPUIdsNumberofElements"
$FilePosition = $FilePosition + $FieldLength
$CPUIdsCounter = 1
while ( $CPUIdsCounter -le $CPUIdsNumberofElements ) {
  $CPUIdsElementLength = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
  $CPUIdsElementLength = [int]$CPUIdsElementLength - $FieldLength
  $FilePosition = $FilePosition + $FieldLength
  $CPUIdsElementContents = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($CPUIdsElementLength -1))])
  Write-Debug -message "$CPUIdsCounter CPU Id lengtn/contents: $CPUIdsElementLength $CPUIdsElementContents"
  $CPUIdsElementContents = $CPUIdsElementContents -split "(.{2})" -ne "" | ForEach-Object {[char][byte]"0x$_"}
  $CPUIds += $CPUIdsElementContents -join ""
  $CPUIdsCounter++
  $FilePosition = $FilePosition + $CPUIdsElementLength
  }

Write-Debug -message "4 On $FilePosition"

$SWKKeysCode = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$SWKKeysCode = [int]$SWKKeysCode - $FieldLength
$FilePosition = $FilePosition + $FieldLength
Write-Debug -message "SWK Keys length: $SWKKeysCode"
Write-Debug -message "5 On $FilePosition"
#
# Skip OPS version field
#
$FilePosition = $FilePosition + $OldOPSVersionFieldLength
#
# Parse creation date
#
$SWKDate = [Datetime]::ParseExact($DateContents, "yyyyMMddHHmmss", $null)
#
# Parse 4760/8770 Handle
#
$4760Handle =  $4760HandleContents -split "(.{2})" -ne "" | ForEach-Object {[char][byte]"0x$_"}
$4760Handle = $4760Handle -join ""
#
# Print 
#
Write-Host
$SWKHeader.Created = $SWKDate
$SWKHeader.DLL_version = $SWKDll
$SWKHeader.Soft_key = $SWKCode
$SWKHeader.Handle_4760 = $4760Handle

$CPUIdsCounter = 1
foreach ( $ID in $CPUIds ) {
   Write-Debug -message "CPUId $CPUIdsCounter : $ID"
   $HashKeyName = "CPUId" + $CPUIdsCounter
   $SWKHeader.$HashKeyName = $ID
   $CPUIdsCounter++
   }
Write-Host
<# There is no need for that check
 And it works only on new swk files from R8
$CheckStart = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($KeysStart.Length -1))])
if ( $null -eq (Compare-Object -ReferenceObject $CheckStart  -DifferenceObject $KeysStart ) ) {
  Write-Debug "Found start of licenses at $FilePosition"
  $FilePosition = $FilePosition +5
  }
  else {
    Write-Host "Something wrong, check file. INFO: $CheckStart"
    exit
    }
#>

#
# Load SWK values to one string
#
$KeysFullString = $SWKBuffer[$FilePosition..$SWKBuffer.Length]

# Process $KeysFullString
# Point to the beginning of the string
$KeyPosition = 0
$KeyTotalCounter = $KeyActiveCounter = 0
while ( $KeyPosition -lt $KeysFullString.Length ) {
# Get key number
  [int32]$KeyNumber = [System.Text.Encoding]::ASCII.GetString($KeysFullString[$KeyPosition..($KeyPosition + $FieldLengthOffset)])
  # it is now only 1 value but anyway
  $KeyPosition = $KeyPosition + $FieldLength
  [int32]$NumberOfKeysFields = "0x" + [System.Text.Encoding]::ASCII.GetString($KeysFullString[$KeyPosition..($KeyPosition + 1)])
# Get license value
  $KeyPosition = $KeyPosition + 2
  if (($KeyNumber -eq "301") -or ($KeyNumber -eq "302")) {
    [string]$KeyValue = [System.Text.Encoding]::ASCII.GetString($KeysFullString[$KeyPosition..($KeyPosition + $KeyOffset)])
# There is no need to print empty Hardkey
    if ( [int]$KeyValue -eq "0" ) {
      [int32]$KeyValue = 0
      }
    }
    else {
      [int32]$KeyValue = [System.Text.Encoding]::ASCII.GetString($KeysFullString[$KeyPosition..($KeyPosition + $KeyOffset)])
      }
  $KeyName = $SWKArray.$KeyNumber
  $KeyPosition = $KeyPosition + ($KeyOffset + 1)
  Write-Debug -message "Key $KeyNumber $KeyName : $KeyValue"
  if ( ($SWKArray.$KeyNumber) -and ($KeyValue -ne "0") ) {
      Write-Debug -message "$KeyNumber $KeyName : $KeyValue"
      $SWKdecoded.$KeyNumber = @()
      $SWKdecoded.$KeyNumber += ($KeyName, $KeyValue)
      $KeyActiveCounter++
      }
      $KeyTotalCounter++
}
#
# Get exact SW Version 
#
$SWKHeader.SWVersion = $SWVersionsArray[($SWKdecoded."165")[1]]
Write-Debug -Message "Processed Total $KeyCounter Active $KeyActiveCounter keys"
$SWKHeader.Keys | ForEach-Object { Write-Host "$($_)" "`t" $($SWKHeader[$_]) }
$SWKdecoded.Keys | ForEach-Object { Write-Host "$($_)" "`t" ( $($SWKdecoded[$_]) -join "`t") } 
Pop-Location
