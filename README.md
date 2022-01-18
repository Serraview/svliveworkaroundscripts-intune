# Powershell Scripts for SVLive workaround on Intune

The purpose of these scripts are used to apply for SVLive specific workarounds. These scripts used by Intune under Devices > Scripts and assigned with the Intune-SVLIve-Pilot group.

## spsworkaround.ps1
This script redirects the the SPS config endpoint address to the ini file in C:\ProgramData\Serraview\SVLive Presence Service

#### When to use
Use if installer does not append the CONFIGAPIADDRESS msi parameter.

#### How to use
1. Clone this repo
2. Edit the spsworkaround.ps1 script and modify the API address within the Write-Output cmdlet in line 6 to the desired address.
3. Save the script and upload it to Intune within  Devices > Scripts
4. Assign groups for the script to apply to.

## spsstartupworkaround.ps1
This script creates a shortcut to sps.exe under C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp. 

#### When to use
This script is exclusively used for working around the issue of sps not auto starting during start up for sps 3.

#### How to use
1. Clone this repo
2. Upload the the spsstartupworkaround.ps1 script to Intune within Devices > Scripts
3. Assign groups for the script to apply to.