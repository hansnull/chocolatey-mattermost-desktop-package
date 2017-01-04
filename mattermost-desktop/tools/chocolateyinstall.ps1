
$ErrorActionPreference = 'Stop';


$packageName= 'mattermost-desktop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://releases.mattermost.com/desktop/3.5.0/mattermost-setup-3.5.0-win32.exe'
$url64      = 'https://releases.mattermost.com/desktop/3.5.0/mattermost-setup-3.5.0-win64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  validExitCodes= @(0, 3010, 1641)
  silentArgs	= '--silent'

  softwareName  = 'Mattermost*'
  checksum      = 'a24a23b8fb4c33ef88ab04171406dd3f'
  checksumType  = 'md5'
  checksum64    = 'ae9577f3e0497f99aa4a8ca20b37b657'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs


















