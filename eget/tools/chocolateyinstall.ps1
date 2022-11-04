$ErrorActionPreference = 'Stop';

Remove-Item -Path "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\\eget-*" -Recurse -Force

Install-ChocolateyZipPackage `
  -PackageName 'eget' `
  -Url 'https://github.com/zyedidia/eget/releases/download/v1.3.0/eget-1.3.0-windows_386.zip' `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Url64bit 'https://github.com/zyedidia/eget/releases/download/v1.3.0/eget-1.3.0-windows_amd64.zip' `
  -Checksum '5d8bd4bfa01bc810e5b7ecfa55a52f3dbb66fd43b7f32ce45ade29e07e6f3522' `
  -ChecksumType 'sha256' `
  -Checksum64 '0a93d5bab77d8430002251e388a844535ee5529e346ec845cbc732bca9079375' `
  -ChecksumType64 'sha256'
