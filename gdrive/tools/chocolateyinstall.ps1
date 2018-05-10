$ErrorActionPreference = 'Stop';

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition

$installerFile = if ((Get-OSArchitectureWidth 64) -and $env:chocolateyForceX86 -ne 'true') {
         Write-Host "Installing x64 bit version"; Remove-Item $toolsPath\gdrive-windows-386.exe; Rename-Item -Path $toolsPath\gdrive-windows-x64.exe -NewName "gdrive.exe"
} else { Write-Host "Installing x32 bit version"; Remove-Item $toolsPath\gdrive-windows-x64.exe; Rename-Item -Path $toolsPath\gdrive-windows-386.exe -NewName "gdrive.exe" }
