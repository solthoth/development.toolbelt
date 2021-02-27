#Reference article to install p4v client: https://community.perforce.com/s/article/2456
$url = "https://www.perforce.com/downloads/perforce/r21.1/bin.ntx64/p4vinst64.exe"
$file = "$env:temp\p4vinst64.exe"

(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)

Start-Process -FilePath $file -ArgumentList "/s","/v`"/qn ADDLOCAL=ALL`""