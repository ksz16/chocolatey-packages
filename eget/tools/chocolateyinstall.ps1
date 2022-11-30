$ErrorActionPreference = 'Stop';

Remove-Item -Path "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\\eget-*" -Recurse -Force

Install-ChocolateyZipPackage `
  -PackageName 'eget' `
  -Url 'https://github.com/zyedidia/eget/releases/download/v1.3.1/eget-1.3.1-windows_386.zip' `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Url64bit 'https://github.com/zyedidia/eget/releases/download/v1.3.1/eget-1.3.1-windows_amd64.zip' `
  -Checksum '80e5b67e7524aa6f5b07a8e56279884bb0f184d03e0459e4e3fbc8d6d5586798' `
  -ChecksumType 'sha256' `
  -Checksum64 'e0f01e674d127f43bd56e67b1f8d4f4563f3f644a04b8da505d3a9a573b68b26' `
  -ChecksumType64 'sha256'
