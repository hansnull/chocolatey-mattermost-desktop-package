
$ErrorActionPreference = 'Stop';


$packageName= 'mattermost-desktop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://releases.mattermost.com/desktop/4.0.1/mattermost-setup-4.0.1-win32.exe'
$url64      = 'https://releases.mattermost.com/desktop/4.0.1/mattermost-setup-4.0.1-win64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  validExitCodes= @(0, 3010, 1641)
  silentArgs	= '--silent'

  softwareName  = 'Mattermost*'
  checksum      = 'cfabd2c92fc0618dbe31952f0715d0708da7240a94a0c20f3e12aa95e8a7467c'
  checksumType  = 'sha256'
  checksum64    = 'ccb465509844dc0a6cf4035212854e2fc477c23e32321f82a936db861d73f5cb'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs


















