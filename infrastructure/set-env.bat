# to set up env variable to support AWS CLI activities as well as git
#
set JAVA_HOME="C:\Program Files\Java\jre7"
set PATH=%PATH%;%JAVA_HOME%
set EC2_HOME="C:\Program Files\Amazon\AWSCLI"
set PATH=%PATH%;%EC2_HOME%
set PATH=%PATH%;C:\Program Files\Git\cmd
git config --global credential.helper store
git config --global credential.helper cache
git config credential.helper 'cache --timeout=3600'
git config --global credential.helper wincred