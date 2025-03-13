$ErrorActionPreference = 'Stop'
$url64      = "https://github.com/gardener/diki/releases/download/v1.5.0/diki-windows-amd64"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  Url64bit        = $url64
  ChecksumType64  = 'sha256'
  Checksum64      = "e0a7c2dc42d348760cbebc3776453db1971801205be371b6b26d6d72c9e4c388"
  FileFullPath    = "$toolsDir\diki.exe"
}
Get-ChocolateyWebFile @packageArgs
