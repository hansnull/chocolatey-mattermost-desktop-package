
$ErrorActionPreference = 'Stop';


$packageName= 'mattermost-desktop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://releases.mattermost.com/desktop/1.3.0/mattermost-setup-1.3.0-win32.exe'
$url64      = 'https://releases.mattermost.com/desktop/1.3.0/mattermost-setup-1.3.0-win64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  validExitCodes= @(0, 3010, 1641)
  silentArgs	= '--silent'

  softwareName  = 'Mattermost*'
  checksum      = '6397114af8f073eadac3170af1f35265'
  checksumType  = 'md5'
  checksum64    = '4baa2b9421330a1cedd2ac5218aa12b7'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs


















