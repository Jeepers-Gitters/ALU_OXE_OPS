# OPS sw reader
$SWKVersionLength = 8
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
$OPSFilepath = Split-Path -Parent $SWKFile
#$SWKFile = "C:\Utils\OL00001A.swk"

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
Write-Host "Area starts at" $AreaStart "and descriptor length is" $DataLength
Write-Host "Number of areas:" $SWKareas
$FilePosition = $FilePosition + $FieldLength
#
# Length of 1st element in descriptor
# Write-Host "0 On $FilePosition"
$ElementNumber = 1
$ElementLength = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[($FilePosition)..($FilePosition + $FieldLengthOffset)])
$ElementLength = [int]$ElementLength
$ElementContent = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $ElementLength)])
$FilePosition = $AreaStart + $ElementLength
Write-Host "1 On $FilePosition"
$Area1Code = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$Area1Code = [int]$Area1Code - $FieldLength
$FilePosition = $FilePosition + $FieldLength
$Area1Contents = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($Area1Code - 1))])
Write-Host "Area 1 length/content:" $Area1Code"/"$Area1Contents
Write-Host "2 On $FilePosition"

$FilePosition = $FilePosition + $Area1Code 
$Area2Code = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$Area2Code = [int]$Area2Code - $FieldLength
$FilePosition = $FilePosition + $FieldLength
$Area2Contents = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($Area2Code - 1))])
Write-Host "Area 2 length/content:" $Area2Code"/"$Area2Contents
Write-Host "3 On $FilePosition"

$FilePosition = $FilePosition + $Area2Code 
$Area3Code = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$Area3Code = [int]$Area3Code - $FieldLength
$FilePosition = $FilePosition + $FieldLength
$Area3Contents  = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($Area3Code - 1))])
Write-Host "Area 3 length/content:" $Area3Code"/"$Area3Contents
$Area3NumberofElements = "0x" + [System.Text.Encoding]::ASCII.GetString($Area3Contents[0..$FieldLengthOffset])
$Area3NumberofElements = [int]$Area3NumberofElements
Write-Host "Area 3 number of elements:" $Area3NumberofElements

$FilePosition = $FilePosition + $FieldLength
$Area3Element1Length = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$Area3Element1Length = [int]$Area3Element1Length - $FieldLength
$FilePosition = $FilePosition + $FieldLength
$Area3Element1Contents = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($Area3Element1Length -1))])
Write-Host "Area 3 Element 1 lengtn/contents:"$Area3Element1Length"/"$Area3Element1Contents
$Area3Element1Contents = $Area3Element1Contents -split "(.{2})" -ne "" | ForEach-Object {[char][byte]"0x$_"}
$Area3Element1Contents = $Area3Element1Contents -join ""

$FilePosition = $FilePosition + $Area3Element1Length
$Area3Element2Length = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$Area3Element2Length = [int]$Area3Element2Length - $FieldLength
$FilePosition = $FilePosition + $FieldLength
$Area3Element2Contents = [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + ($Area3Element2Length -1))])
Write-Host "Area 3 Element 2 lengtn/contents:"$Area3Element2Length"/"$Area3Element2Contents
$Area3Element2Contents = $Area3Element2Contents -split "(.{2})" -ne "" | ForEach-Object {[char][byte]"0x$_"}
$Area3Element2Contents = $Area3Element2Contents -join ""


$Area3Element1Length = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])

$FilePosition = $FilePosition + $Area3Element2Length
Write-Host "4 On $FilePosition"

$Area4Code = "0x" + [System.Text.Encoding]::ASCII.GetString($SWKBuffer[$FilePosition..($FilePosition + $FieldLengthOffset)])
$Area4Code = [int]$Area4Code - $FieldLength
$FilePosition = $FilePosition + $FieldLength
Write-Host "Area 4 length:" $Area4Code
Write-Host "5 On $FilePosition"


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
  Write-Host "Found start of licenses at $FilePosition"
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
while ( $KeyPosition -lt $KeysFullString.Length ) {
# Get key number
  [int]$KeyNumber = [System.Text.Encoding]::ASCII.GetString($KeysFullString[$KeyPosition..($KeyPosition + $KeyOffset)])
# it is now only 1 field but anyway
  $KeyPosition = $KeyPosition + 4
  [int]$NumberOfKeysFields = "0x" + [System.Text.Encoding]::ASCII.GetString($KeysFullString[$KeyPosition..($KeyPosition + 1)])
# Get license value
  $KeyPosition = $KeyPosition + 2
  [int]$KeyValue = [System.Text.Encoding]::ASCII.GetString($KeysFullString[$KeyPosition..($KeyPosition + 5)])
  Write-Host "Key $KeyNumber : $KeyValue"
  $KeyPosition = $KeyPosition + 6
}
Pop-Location
