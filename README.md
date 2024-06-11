[![Hits](https://hits.sh/github.com/Jeepers-Gitters/ALU_OXE_OPS.svg)](https://hits.sh/github.com/Jeepers-Gitters/ALU_OXE_OPS/)
[![Github All Releases](https://img.shields.io/github/downloads/Jeepers-Gitters/ALU_OXE_OPS/total.svg)]()
# Alcatel-Lucent OmniPCX Enterprise license file reader
 I still have such a reader written in QuickBasic. Its time to use modern tools.
- Fully rewritten in Powershell
- Uses Windows.Forms so works only in Windows
- Processes *.swk file of your choice and shows activated licensies and writes the result as tab-delimited values which makes it easy to load into Excel spreadsheet.
- Useful for inventory of PCXes or checking newly generated files without loading it to PCX
# Installation
- Just copy swk.ps1 file to any folder you like. Or, you can compile script yourself with ps2exe utility. Be careful Microsoft Defender detects compiled with ps2exe utility Poweshell scripts as malware. 
# Using script
- Answer Yes ro run a script when asked about Execution-Policy.
- Run script or exe file then navigate to the folder where is your swk file is. Choose it, then contents of swk file displayed in a way similar to "spadmin" command with possibility to search.
- Tab-delimited Values file is automatically written in a folder with the same name as swk file but with .txt extension. If you just want to check swk file use -JustShow option - no *.txt file is written in this case.
