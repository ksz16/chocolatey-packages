$ErrorActionPreference = 'Stop';

Remove-Item -Path "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\\eget-*" -Recurse -Force

Install-ChocolateyZipPackage `
  -PackageName 'eget' `
  -Url 'https://github.com/zyedidia/eget/releases/download/v1.2.1/eget-1.2.1-windows_386.zip' `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Url64bit 'https://github.com/zyedidia/eget/releases/download/v1.2.1/eget-1.2.1-windows_amd64.zip' `
  -Checksum 'c946190ffda9067503731392a3adddd3eade1041b4482345fd06a9e06e745a37' `
  -ChecksumType 'sha256' `
  -Checksum64 'f942331ccc5f755792fe424e58c13cb53da60116ff6deaa7128cc40c6758ab17' `
  -ChecksumType64 'sha256'
