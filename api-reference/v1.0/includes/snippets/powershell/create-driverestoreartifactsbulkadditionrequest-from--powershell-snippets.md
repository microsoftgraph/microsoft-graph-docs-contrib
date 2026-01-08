---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.BackupRestore

$params = @{
	displayName = "ODB-BulkRestoreArtifacts"
	drives = @(
	"contoso1@micorosft.com"
"consotos2@microsoft.com"
"contoso3@microsoft.com"
)
directoryObjectIds = @(
)
protectionUnitIds = @(
)
protectionTimePeriod = @{
startDateTime = [System.DateTime]::Parse("2021-01-01T00:00:00Z")
endDateTime = [System.DateTime]::Parse("2021-01-08T00:00:00Z")
}
destinationType = "new"
tags = "fastRestore"
restorePointPreference = "latest"
}

New-MgSolutionBackupRestoreOneDriveForBusinessRestoreSessionDriveRestoreArtifactBulkAdditionRequest -OneDriveForBusinessRestoreSessionId $oneDriveForBusinessRestoreSessionId -BodyParameter $params

```