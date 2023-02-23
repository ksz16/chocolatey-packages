$ErrorActionPreference = 'Stop';

Remove-Item -Path "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\\eget-*" -Recurse -Force

Install-ChocolateyZipPackage `
  -PackageName 'eget' `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Url 'https://github.com/zyedidia/eget/releases/download/v1.3.3/eget-1.3.3-windows_386.zip' `
  -Checksum '9aef1a5af2f56101bcf20a592185044e8342437070b124170e6d043872e0142d' `
  -ChecksumType 'sha256' `
  -Url64 'https://github.com/zyedidia/eget/releases/download/v1.3.3/eget-1.3.3-windows_amd64.zip' `
  -Checksum64 '707fd02e85617bceb527ad02c846d85d6e929270398a6ccadb2b9e2e8213b15b' `
  -ChecksumType64 'sha256'
