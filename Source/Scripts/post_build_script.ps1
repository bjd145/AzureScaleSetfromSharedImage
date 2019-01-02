Set-Variable -Option Constant -Name drive   -Value ($ENV:SystemDrive)
Set-Variable -Option Constant -Name web_dir -Value (Join-Path $Drive "Web")

$site_name = "01"
$site_path = Join-Path -Path $web_dir -ChildPath $site_name 
'<html><head></head><body><form runat="server">This file was created via the Custom Script Extension <BR/></form></body></html>' | 
    Out-File -FilePath (Join-Path -Path $site_path -ChildPath "cse.aspx") -Encoding ascii -Append
