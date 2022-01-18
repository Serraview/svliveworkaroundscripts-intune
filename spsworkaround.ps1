$Testspsconfigpath = Test-Path -Path "C:\ProgramData\Serraview\SVLive Presence Service\sps.ini"

if($Testspsconfigpath -eq $True)
{
  Write-Output '[SPS]' > "C:\ProgramData\Serraview\SVLive Presence Service\sps.ini"
  Write-Output 'config-endpoint=https://spaceiq-svlive.svlive.serraview.com/presenceservice' >> "C:\ProgramData\Serraview\SVLive Presence Service\sps.ini"
}
else
{
  Write-Output "File does not exist"
}

