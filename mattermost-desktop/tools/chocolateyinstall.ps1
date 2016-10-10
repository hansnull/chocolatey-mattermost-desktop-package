
$ErrorActionPreference = 'Stop';


$packageName= 'mattermost-desktop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://releases.mattermost.com/desktop/3.4.1/mattermost-setup-3.4.1-win32.exe'
$url64      = 'https://releases.mattermost.com/desktop/3.4.1/mattermost-setup-3.4.1-win64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  validExitCodes= @(0, 3010, 1641)
  silentArgs	= '--silent'

  softwareName  = 'Mattermost*'
  checksum      = 'c0d6adc4cb8f262870f824ee40fcacc8'
  checksumType  = 'md5'
  checksum64    = 'f1188bf3392a8f8cae879c4dd35f2667'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs


















