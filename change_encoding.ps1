$SourcePath = get-location
Get-ChildItem $SourcePath\*.csv| ForEach-Object {
$content = $_ | Get-Content
Set-Content -PassThru $_.Fullname $content -Encoding UTF8 -Force}