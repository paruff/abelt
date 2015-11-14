# change me
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

choco install -y git

choco install -y VisualStudio2015Community

choco install -y atom

choco install -y sublimetext2
choco install -y SublimeText2.PowershellAlias
choco install -y SublimeText2.PackageControl

choco install -y putty

choco install -y jdk7

choco install -y awscli

choco install -y vagrant

choco install -y virtualbox

#choco install -y consolez
choco install -y console2

choco install -y chefdk
