# OPS sw reader
$SWKVersionLength = 8
$SWKArray = ((1, "GroupTelephony"), (2, "Phonebook users"), (4, "Hotel guest sets"), (5, "Multilangual voice prompts"), (6, "Hotel AHL on V24"), (9, "PRA"), (10, "Voice Guide"), (11, "AutomatedAttendant"), (12, "DISA"), (13, "ECSEngine"), (14, "Integrated metering report"), (15, "ExternalAccounting"), (16, "V24 for Metering on fly (not used)"), (19, "Corporate netw. (ABCABCVPNISVPN)"), (20, "Automated attendant"), (21, "Nb of VPS ports"), (25, "CLI (4600)"), (29, "DECT/PWT Engine"), (30, "4736ACD"), (31, "AMIS"), (38, "Infocenter link"), (39, "Performance"), (40, "Real Time Incidents"), (41, "DECT register"), (42, "Accounting users"), (44, "4059 SBC"), (45, "4059 BLF"), (46, "Fax server ABC-A link"), (47, "Alarms"), (49, "Directory"), (50, "Configuration"), (51, "Real Time Metering on V24"), (56, "4635 Networking OctelNet"), (57, "4635 Fax manager"), (58, "4635 Call manager"), (59, "4635 Hotel manager"), (60, "4635 Nb of port"), (61, "4635 Nb of hours"), (62, "4635 Nb of languages"), (63, "4635 Attendant manager"), (65, "4635 Recording manager"), (66, "4635 Networking AMIS"), (75, "Networking hospital"), (76, "CCD Agents"), (77, "CCS mono-site"), (78, "CRI call record interface"), (79, "ISVPN"), (80, "VPN"), (81, "Meet me conf. between 29 parties"), (82, "Nb of DECT terminals"), (83, "Flow Metering on Ethernet"), (84, "4635 users"), (86, "Automatic directory pop-up"), (87, "BetaTest"), (89, "Notification server"), (90, "Roaming DECT/PWT"), (91, "Voice guide record from Reflexes"), (94, "WMI Workforce manager interface"), (96, "HotelSuite"), (97, "VPS users"), (98, "Accounting for local calls"), (99, "Accounting for ABC calls"), (100, "CSTA profile"), (101, "CSTA monitoring requests"), (102, "CSS multi-site"), (103, "Real Time Interface"), (105, "Compressed calls"), (106, "Transfix"), (107, "4635 Visual messenger"), (109, "4635 IP Octel Networking"), (110, "4635 Global message redundancy"), (111, "Ubiquity"), (113, "CSTA pilots monitoring"), (114, "TSAPI server"), (115, "CCA softphone"), (116, "ECC My Softphone (4980 Std)"), (117, "ECC 4980 Option (4980 Adv)"), (119, "4980 nomadic logged"), (121, "CLIP on VPS"), (122, "ACAPI via CMIP"), (123, "CSTA IVR ports monitored"), (125, "CCweb Agents"), (126, "Hotel AHL link"), (127, "Encryption DECT/PWT users"), (128, "4615Port"), (129, "ECC My Softphone (4980 Grp)"), (130, "CSTA voice recording type"), (131, "Remote LIO"), (132, "IP-Trunk"), (133, "Mastered conference"), (134, "Multi-tenant"), (135, "G729A Server"), (136, "Priority"), (137, "Call restriction"), (138, "IP Clients"), (143, "TAPI premium server"), (145, "CSTA Recording B channel"), (146, "PWT mobility (UTAM)"), (147, "IPDevice"), (148, "IP Call Server"), (149, "4980Dispatcher"), (151, "4635 VPIM"), (152, "Ith"), (153, "SNMP Trap"), (154, "Additional S0 features"), (155, "Additional safety features"), (156, "Ith"), (157, "CCA nomadic"), (158, "CSTA By-pass"), (160, "CCemail Agents"), (161, "CCoutbound Agents"), (162, "CCoutpredial Agents"), (164, "CSTA Record networked"), (165, "OmniPCX Enterprise release"), (166, "4980 multi device"), (167, "ACR data base read"), (168, "Nb of HPOV node"), (169, "Voice detection channels"), (173, "Advanced Reflexes users"), (174, "Analog users"), (175, "Mobile users"), (176, "Advanced IP users"), (177, "SIP users"), (178, "4645 Voice mail engine"), (179, "4645 users"), (181, "OmniPCX Enterprise"), (182, "4645 networking"), (183, "4645 additional language"), (184, "Integrated Gatekeeper"), (185, "SIP Gateway"), (186, "E-CS redundancy"), (187, "H323 (G711) network link"), (188, "SIP network links"), (189, "CCTI agents"), (190, "RSI call center agents"), (191, "Campus DECT"), (192, "DREXProtocol"), (193, "Embedded voice guides"), (194, "EVA Portal users"), (195, "CCD profile"), (196, "RSI Business agents"), (197, "G729A Client"), (198, "G723.1 Client"), (199, "Version 4400 R5.0 Ux"), (200, "4400 Mobiles migration"), (308, "Remote extension"), (309, "XML telephony"), (310, "CLIP Z"), (311, "ACR Networking"), (312, "Scripting agents"), (313, "eCCGateway"), (314, "4635MyMessagingUsers"), (316, "Standard Reflexes users"), (317, "Standard IP users"), (318, "MaxConnectionPRS"), (325, "IPTouchSecurity"), (326, "IPTouchSecurityUsers"), (327, "SecurityModule"), (328, "IPSoftphone"), (329, "IPSoftphoneCCD"), (330, "AdvancedMIPTUsers"), (332, "PCS max. number"), (334, "MaxIPRecording"), (335, "Greeting Assistant"), (336, "IMEStations"), (337, "SIPExtVoiceMails"), (342, "ABC-IP Access Number"), (343, "MgSec Max Number"), (345, "SIP extension users"), (348, "Soft MSM lock"), (358, "Max number of SIP TLS sets"), (359, "Max com simultaneous SIP TLS"), (363, "NOESIP TLS users"), (364, "Max Attendants 4059EE"), (371, "IPDect Users"), (384, "OXE Media Servers"), (385, "VoIP channels on OMS"), (386, "UC as a Service"), (396, "IPV6"), (406, "OT gateways allowed"), (424, "Native Encryption Users"), (428, "Sip Trunk Recording"), (429, "Correlator Data"), (430, "SipSoftPhone"), (431, "Opex Mode"), (467, "ARS"), (468, "ProductType"), (469, "G723.1 Server"), (1000, "SupervisableSets"), (1001, "VoiceMailBoxes"), (1002, "FaxMailBoxes") )
$SWKeyLength = 20
$FieldLength = 4
$FieldLengthOffset = $FieldLength - 1
$FilePosition = 0
$KeysStart = "00000000101"
  
Push-Location

Add-Type -AssemblyName System.Windows.Forms
#  [Enum]::GetNames('System.Environment+SpecialFolder')
$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{ InitialDirectory = [Environment]::GetFolderPath('Recent') }
$FileBrowser.Filter = "swk files (*.swk)|*.swk|All Files (*.*)|*.*"
#$FileBrowser.Filter = "Text files (*.txt)|*.txt|All files (*.*)|*.*"
$null = $FileBrowser.ShowDialog()
$SWKFile = $FileBrowser.FileName
#$SWKFile = "C:\Utils\OL00001A.swk"
if ( -not $SWKFile ) {
  Write-Host "No files chosen. Exiting."
  exit
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
$SWKDll = [System.Text.Encoding]::ASCII.GetString( $SWKBuffer[$FilePosition..($SWKVersionLength-1)] ) -split "(.{2})" -ne "" | ForEach-Object {[char][byte]"0x$_"}
$SWKDll = $SWKDll -join ""
$FilePosition = $FilePosition + $SWKVersionLength
#
# There is no sense to get length of swkey as it is always 20 (0x18) so just move pointer 4 characters ahead
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
Write-Debug -message "Number of areas: $SWKareas"
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
$Area1Code = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$Area1Code = [int]$Area1Code - $FieldLength
$FilePosition = $FilePosition + $FieldLength
$Area1Contents = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($Area1Code - 1))])
Write-Debug -message "Area 1 length/content: $Area1Code $Area1Contents"
Write-Debug -message "2 On $FilePosition"

$FilePosition = $FilePosition + $Area1Code 
$Area2Code = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$Area2Code = [int]$Area2Code - $FieldLength
$FilePosition = $FilePosition + $FieldLength
$Area2Contents = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($Area2Code - 1))])
Write-Debug -message "Area 2 length/content: $Area2Code $Area2Contents"
Write-Debug -message "3 On $FilePosition"

$FilePosition = $FilePosition + $Area2Code 
$Area3Code = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$Area3Code = [int]$Area3Code - $FieldLength
$FilePosition = $FilePosition + $FieldLength
$Area3Contents  = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($Area3Code - 1))])
Write-Debug -message "Area 3 length/content: $Area3Code  $Area3Contents"
$Area3NumberofElements = "0x" + [System.Text.Encoding]::ASCII.GetString($Area3Contents[0..$FieldLengthOffset])
$Area3NumberofElements = [int]$Area3NumberofElements
Write-Debug -message "Area 3 number of elements: $Area3NumberofElements"

$FilePosition = $FilePosition + $FieldLength
$Area3Element1Length = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$Area3Element1Length = [int]$Area3Element1Length - $FieldLength
$FilePosition = $FilePosition + $FieldLength
$Area3Element1Contents = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($Area3Element1Length -1))])
Write-Debug -message "Area 3 Element 1 lengtn/contents: $Area3Element1Length $Area3Element1Contents"
$Area3Element1Contents = $Area3Element1Contents -split "(.{2})" -ne "" | ForEach-Object {[char][byte]"0x$_"}
$Area3Element1Contents = $Area3Element1Contents -join ""

$FilePosition = $FilePosition + $Area3Element1Length
$Area3Element2Length = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$Area3Element2Length = [int]$Area3Element2Length - $FieldLength
$FilePosition = $FilePosition + $FieldLength
$Area3Element2Contents = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($Area3Element2Length -1))])
Write-Debug -message "Area 3 Element 2 lengtn/contents: $Area3Element2Length $Area3Element2Contents"
$Area3Element2Contents = $Area3Element2Contents -split "(.{2})" -ne "" | ForEach-Object {[char][byte]"0x$_"}
$Area3Element2Contents = $Area3Element2Contents -join ""


$Area3Element1Length = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])

$FilePosition = $FilePosition + $Area3Element2Length
Write-Debug -message "4 On $FilePosition"

$Area4Code = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$Area4Code = [int]$Area4Code - $FieldLength
$FilePosition = $FilePosition + $FieldLength
Write-Debug -message "Area 4 length: $Area4Code"
Write-Debug -message "5 On $FilePosition"


$SWKDate = [Datetime]::ParseExact($Area1Contents, "yyyyMMddHHmmss", $null)
$4760Handle =  $Area2Contents -split "(.{2})" -ne "" | ForEach-Object {[char][byte]"0x$_"}
$4760Handle = $4760Handle -join ""

Write-Host
Write-Host "Created on:" $SWKDate
Write-Host "DLL version:" $SWKDll
Write-Host "Software key:" $SWKCode
Write-Host "4760 Handle:" $4760Handle
Write-Host "CPUId:" $Area3Element1Contents
Write-Host $Area3Element2Contents

$CheckStart = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($KeysStart.Length -1))])
if ( $null -eq (Compare-Object -ReferenceObject $CheckStart  -DifferenceObject $KeysStart ) ) {
  Write-Debug "Found start of licenses at $FilePosition"
  $FilePosition = $FilePosition +5
  }
  else {
    Write-Host "Something wrong, check file"
    exit
    }
$KeysFullString = $SWKBuffer[$FilePosition..$SWKBuffer.Length]

# Process $KeysFullString
$KeyPosition = 0
$KeyOffset = 3
$SWKArrayPosition = 0
while ( $KeyPosition -lt $KeysFullString.Length ) {
# Get key number
  [int32]$KeyNumber = [System.Text.Encoding]::ASCII.GetString($KeysFullString[$KeyPosition..($KeyPosition + $KeyOffset)])
# it is now only 1 field but anyway
  $KeyPosition = $KeyPosition + 4
  [int32]$NumberOfKeysFields = "0x" + [System.Text.Encoding]::ASCII.GetString($KeysFullString[$KeyPosition..($KeyPosition + 1)])
# Get license value
  $KeyPosition = $KeyPosition + 2
  [int32]$KeyValue = [System.Text.Encoding]::ASCII.GetString($KeysFullString[$KeyPosition..($KeyPosition + 5)])
  if ( [int32]$SWKArray[$SWKArrayPosition][0] -eq $KeyNumber ) {
#    Write-Host "Found key name at "
    $KeyName = $SWKArray[$SWKArrayPosition][1]
    Write-Host "$KeyNumber. $KeyName : $KeyValue"
    }
      else {
        $SWKArrayPosition--
        $KeyName = " "
        }
  Write-Debug -message "Key $KeyNumber. $KeyName : $KeyValue"
  $KeyPosition = $KeyPosition + 6
  $SWKArrayPosition++
}
Pop-Location
