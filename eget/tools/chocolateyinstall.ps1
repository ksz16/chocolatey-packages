$ErrorActionPreference = 'Stop';

Remove-Item -Path "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\\eget-*" -Recurse -Force

Install-ChocolateyZipPackage `
  -PackageName 'eget' `
  -Url 'https://github.com/zyedidia/eget/releases/download/v1.2.0/eget-1.2.0-windows_386.zip' `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Url64bit 'https://github.com/zyedidia/eget/releases/download/v1.2.0/eget-1.2.0-windows_amd64.zip' `
  -Checksum 'd998cf731754e833237ac688e8cd0503' `
  -ChecksumType 'md5' `
  -Checksum64 '80734626f4b09ed7a816598f19e2b467' `
  -ChecksumType64 'md5'
