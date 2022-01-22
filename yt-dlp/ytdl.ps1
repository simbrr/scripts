$YTurl = Read-Host 'Youtube url'

$Title = "Youtube Downloader"
$Info = "Choose your download option:"

$options = @(
    [System.Management.Automation.Host.ChoiceDescription]::new("&Audio", "Downloads as MP3")
    [System.Management.Automation.Host.ChoiceDescription]::new("&Video-MP4", "Recodes video to MP4")
    [System.Management.Automation.Host.ChoiceDescription]::new("&Default Video", "Default download with no recoding")
)

[int]$defaultchoice = 1
$opt = $host.UI.PromptForChoice($Title , $Info , $Options, $defaultchoice)

switch ($opt) {    
    0 { C:\ProgramData\chocolatey\bin\yt-dlp.exe $YTurl -x --audio-format mp3 }
    1 { C:\ProgramData\chocolatey\bin\yt-dlp.exe $YTurl --recode-video mp4 }
    2 { C:\ProgramData\chocolatey\bin\yt-dlp.exe $YTurl }
}

Read-Host -Prompt  "All done. Press enter to exit."

# Opens the download folder
ii .