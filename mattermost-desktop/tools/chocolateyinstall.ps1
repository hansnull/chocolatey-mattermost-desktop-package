
$ErrorActionPreference = 'Stop';


$packageName= 'mattermost-desktop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://releases.mattermost.com/desktop/4.0.0/mattermost-setup-4.0.0-win32.exe'
$url64      = 'https://releases.mattermost.com/desktop/4.0.0/mattermost-setup-4.0.0-win64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  validExitCodes= @(0, 3010, 1641)
  silentArgs	= '--silent'

  softwareName  = 'Mattermost*'
  checksum      = 'e8a25713fcc84d3acde1a982fd5a464dcd09f3655c3f0bb3d2b39146e6cbf719'
  checksumType  = 'sha256'
  checksum64    = 'afc699a4bf79fb6ddb94f6c1777eb4e930c0126f4c9d39238e22f63a43cf4d02'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs


















