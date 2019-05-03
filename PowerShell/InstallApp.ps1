Import-Module navcontainerhelper
$ContainerName = 'BCT-20190423'
$ProjectFolder = 'E:\Projects\'
$ReleaseDemoAppFile = 'Jurica Bogunovic_ReleaseDemo_1.0.0.0.app'

$SharedFolder = 'C:\ProgramData\NavContainerHelper\Extensions\' + $ContainerName + '\my\'

Copy-Item -Path ($ProjectFolder + '\ReleaseDemo\' + $ReleaseDemoAppFile) -Destination $SharedFolder -Force

Publish-NavContainerApp -containerName $ContainerName -appFile ($SharedFolder + $ReleaseDemoAppFile) -skipVerification -syncMode Add -scope Tenant #-install
