
$ErrorActionPreference = 'Stop';


$packageName= 'mattermost-desktop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://releases.mattermost.com/desktop/3.7.1/mattermost-setup-3.7.1-win32.exe'
$url64      = 'https://releases.mattermost.com/desktop/3.7.1/mattermost-setup-3.7.1-win64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  validExitCodes= @(0, 3010, 1641)
  silentArgs	= '--silent'

  softwareName  = 'Mattermost*'
  checksum      = '68dd5ee5bed1172c075ff77655d775e484ca9792653be11e0c5e657565debb7f'
  checksumType  = 'sha256'
  checksum64    = '10608aa727ff0de20368d6e201864f167a9f774b1328cf2d2d5ec28080665364'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs


















