param(
    [Parameter(Mandatory=$True, Position=0, ValueFromPipeline=$false)]
    [System.String]
    $app
)

$startupPath = "$Env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"
$symbolicLink = "$startupPath\$app.lnk"

# Add to startup if not already exists
If (Test-Path -Path "$symbolicLink") {
    Write-Host "$app has been already added to autostart"
} else {
    # Find full path by name
    $target = Get-ChildItem -Path "C:\Program Files\", "C:\Program Files (x86)\", "C:\ProgramData\chocolatey\bin\"  -Include "$app.exe", "$app.bat" -File -Recurse -ErrorAction SilentlyContinue

    # Create a symbolic link to a app
    New-Item -ItemType SymbolicLink -Path $symbolicLink -Value $target
}
