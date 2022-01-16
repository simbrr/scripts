$ytLink = Read-Host -Prompt 'Youtube url'

$Title = "Youtube Downloader"
$Info = "Do you want to download Audio or Video?"

$options = @(
    [System.Management.Automation.Host.ChoiceDescription]::new("&Audio", "Downloads as MP3")
    [System.Management.Automation.Host.ChoiceDescription]::new("&Video", "Downloads as MP4")
)
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