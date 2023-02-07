$ErrorActionPreference = 'Stop';

Remove-Item -Path "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\\eget-*" -Recurse -Force

Install-ChocolateyZipPackage `
  -PackageName 'eget' `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Url 'https://github.com/zyedidia/eget/releases/download/v1.3.2/eget-1.3.2-windows_386.zip' `
  -Checksum '08a909d769bdbac6e0cf808d893f11832d400a4b44679a0a7b6965b19eab717c' `
  -ChecksumType 'sha256' `
  -Url64 'https://github.com/zyedidia/eget/releases/download/v1.3.2/eget-1.3.2-windows_amd64.zip' `
  -Checksum64 '1dae2ba129d8bec1e839543d4b0680bf207f61a473557dd5ea40ede60d42e2dc' `
  -ChecksumType64 'sha256'
