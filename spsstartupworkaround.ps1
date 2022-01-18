$SourceFileLocation = "C:\Program Files\Serraview\SVLive Presence Service\sps.exe"
$ShortcutLocation = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\sps.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $SourceFileLocation
$Shortcut.Save()