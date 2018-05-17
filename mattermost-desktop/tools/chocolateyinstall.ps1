
$ErrorActionPreference = 'Stop';


$packageName= 'mattermost-desktop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://releases.mattermost.com/desktop/4.1.0/mattermost-setup-4.1.0-win32.exe'
$url64      = 'https://releases.mattermost.com/desktop/4.1.0/mattermost-setup-4.1.0-win64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  validExitCodes= @(0, 3010, 1641)
  silentArgs	= '--silent'

  softwareName  = 'Mattermost*'
  checksum      = '99ec654d48b19777de2704092ef5d5d4058e0afae6133ced5c092606ceba49bb'
  checksumType  = 'sha256'
  checksum64    = '1559f7498bcf072cb8a0e6568b8b2e3e1f483b8002f16e06ea3c13ab8347de94'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs


















