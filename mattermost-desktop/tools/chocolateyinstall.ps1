
$ErrorActionPreference = 'Stop';


$packageName= 'mattermost-desktop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://releases.mattermost.com/desktop/3.7.0/mattermost-setup-3.7.0-win32.exe'
$url64      = 'https://releases.mattermost.com/desktop/3.7.0/mattermost-setup-3.7.0-win64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  validExitCodes= @(0, 3010, 1641)
  silentArgs	= '--silent'

  softwareName  = 'Mattermost*'
  checksum      = '2d40e084d905a162a7c461b534cbe38f'
  checksumType  = 'md5'
  checksum64    = '98137bd89e11a27d25dc8e6f513398ce'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs


















