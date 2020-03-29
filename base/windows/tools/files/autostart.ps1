param(
    [Parameter(Mandatory=$True, Position=0, ValueFromPipeline=$false)]
    [System.String]
    $app
)

$startupPath = "$Env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"

Write-Host $app
Write-Host $startupPath

# Add to startup if not already exists
If (Test-Path -Path "$startupPath\$app.lnk") {
    Write-Host "$app.lnk has been already added to autostart"
} else {
    # Find full path by name
    $appFullPath = Get-ChildItem -Path "C:\Program Files\", "C:\Program Files (x86)\", "C:\ProgramData\chocolatey\bin\"  -Include "$app.exe", "$app.bat" -File -Recurse -ErrorAction SilentlyContinue

    Write-Host $appFullPath

    # Create a symbolic link to a app
    New-Item -ItemType SymbolicLink -Path $startupPath -Value $appFullPath\$app.lnk
}
