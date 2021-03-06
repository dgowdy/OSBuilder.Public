#   David Segura
#   http://osdeploy.com
#
#   OSBuilder Script
#   Global Set-TimeZone EasternStandardTime.ps1
#   Version 19.1.22
#
#   Displays Variables and Prompts for Enter
#   Set Time Zone to Eastern Standard Time for Install.wim
#======================================================================================
if (Test-Path $MountDirectory) {
    Dism /Image:"$MountDirectory" /Set-TimeZone:"Eastern Standard Time" /LogPath:"$Logs\$((Get-Date).ToString('yyyy-MM-dd-HHmmss'))-Dism-SetTimeZone.log"
}
#======================================================================================
#   Testing
#======================================================================================
#   [void](Read-Host 'Press Enter to continue')