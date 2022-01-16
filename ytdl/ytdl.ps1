$ytLink = Read-Host -Prompt 'Youtube url'

$Title = "Youtube Downloader"
$Info = ""

$options = [System.Management.Automation.Host.ChoiceDescription[]] @("&Audio", "&Video")
[int]$defaultchoice = 1
$opt = $host.UI.PromptForChoice($Title , $Info , $Options, $defaultchoice)
switch($opt)
{
0 {C:\ProgramData\chocolatey\bin\yt-dlp.exe $ytLink -x --audio-format mp3}
1 {C:\ProgramData\chocolatey\bin\yt-dlp.exe $ytLink --recode-video mp4}
} 

Read-Host -Prompt  "All done. Press enter to exit."

# Opens the download folder
ii .\