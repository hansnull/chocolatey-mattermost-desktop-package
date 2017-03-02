
$ErrorActionPreference = 'Stop';


$packageName= 'mattermost-desktop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://releases.mattermost.com/desktop/3.6.0/mattermost-setup-3.6.0-win32.exe'
$url64      = 'https://releases.mattermost.com/desktop/3.6.0/mattermost-setup-3.6.0-win64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  validExitCodes= @(0, 3010, 1641)
  silentArgs	= '--silent'

  softwareName  = 'Mattermost*'
  checksum      = 'b99676af791c5e90309a1be5d42b2bff'
  checksumType  = 'md5'
  checksum64    = 'a96f08587904ad1ca47620d0015fa201'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs


















