$ErrorActionPreference = 'Stop';

Install-ChocolateyZipPackage `
  -PackageName 'gdrive' `
  -Url 'https://github.com/prasmussen/gdrive/releases/download/2.1.1/gdrive_2.1.1_windows_386.tar.gz' `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Url64bit 'https://github.com/prasmussen/gdrive/releases/download/2.1.1/gdrive_2.1.1_windows_amd64.tar.gz' `
  -Checksum 'e03346f9ec72225872d0e32b41abf192' `
  -ChecksumType 'md5' `
  -Checksum64 '14226cb66d7f6c1b84a5be911ff193f6' `
  -ChecksumType64 'md5'

Get-ChocolateyUnzip `
  -FileFullPath "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\\*.tar" `
  -Destination "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Remove-Item -Path "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\\*.tar"
